using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace GestionReservas.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReservaController : ControllerBase
    {
        private readonly AppDBContext _appDBContext;

        public ReservaController(AppDBContext appDBContext)
        {
            _appDBContext = appDBContext;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Reserva>>> GetReservas()
        {
            return await _appDBContext.Reservas.ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Reserva>> GetReserva(int id)
        {
            var reserva = await _appDBContext.Reservas.FindAsync(id);
            if (reserva == null)
                return NotFound("Reserva no encontrada");

            return Ok(reserva);
        }

        [HttpPost]
        public async Task<ActionResult<Reserva>> PostReserva(Reserva reserva)
        {
            if (reserva.FechaEntrada >= reserva.FechaSalida)
                return BadRequest("La fecha de entrada debe ser menor que la fecha de salida.");

            if (reserva.FechaEntrada < DateTime.Now)
                return BadRequest("La fecha de entrada no puede ser en el pasado.");

            var clienteExiste = await _appDBContext.Clientes.AnyAsync(c => c.Id == reserva.IdCliente);
            if (!clienteExiste)
                return BadRequest($"El cliente con ID {reserva.IdCliente} no existe.");

            var habitacionExiste = await _appDBContext.Habitaciones.AnyAsync(h => h.Id == reserva.IdHabitacion);
            if (!habitacionExiste)
                return BadRequest($"La habitación con ID {reserva.IdHabitacion} no existe.");

            var habitacionReservada = await _appDBContext.Reservas.AnyAsync(r =>
                r.IdHabitacion == reserva.IdHabitacion &&
                ((reserva.FechaEntrada >= r.FechaEntrada && reserva.FechaEntrada < r.FechaSalida) ||
                 (reserva.FechaSalida > r.FechaEntrada && reserva.FechaSalida <= r.FechaSalida)));
            if (habitacionReservada)
                return BadRequest("La habitación ya está reservada en el rango de fechas seleccionado.");

            _appDBContext.Reservas.Add(reserva);
            await _appDBContext.SaveChangesAsync();

            var reservaIngresada = await _appDBContext.Reservas.FirstOrDefaultAsync((p => p.Id == reserva.Id));

            return Ok(new { message = "Reserva creada con éxito", reserva = reservaIngresada });

        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutReserva(int id, Reserva reserva)
        {
            if (id < 1)
                return BadRequest("El ID no puede ser negativo o 0.");

            var existingReserva = await _appDBContext.Reservas.FindAsync(id);
            if (existingReserva == null)
                return NotFound("Reserva con ese ID no encontrada.");

            // Validar Fechas
            if (reserva.FechaEntrada >= reserva.FechaSalida)
                return BadRequest("La fecha de entrada debe ser menor que la fecha de salida.");

            if (reserva.FechaEntrada < DateTime.Now)
                return BadRequest("La fecha de entrada no puede ser en el pasado.");

            // Verificar si el cliente existe
            var clienteExiste = await _appDBContext.Clientes.AnyAsync(c => c.Id == reserva.IdCliente);
            if (!clienteExiste)
                return BadRequest($"El cliente con ID {reserva.IdCliente} no existe.");

            // Verificar si la habitación existe
            var habitacionExiste = await _appDBContext.Habitaciones.AnyAsync(h => h.Id == reserva.IdHabitacion);
            if (!habitacionExiste)
                return BadRequest($"La habitación con ID {reserva.IdHabitacion} no existe.");

            // Verificar si la habitación ya está reservada en el rango de fechas
            var habitacionReservada = await _appDBContext.Reservas.AnyAsync(r =>
                r.IdHabitacion == reserva.IdHabitacion &&
                r.Id != id && // Excluir la reserva actual
                ((reserva.FechaEntrada >= r.FechaEntrada && reserva.FechaEntrada < r.FechaSalida) ||
                 (reserva.FechaSalida > r.FechaEntrada && reserva.FechaSalida <= r.FechaSalida)));
            if (habitacionReservada)
                return BadRequest("La habitación ya está reservada en el rango de fechas seleccionado.");

            existingReserva.IdCliente = reserva.IdCliente;
            existingReserva.IdHabitacion = reserva.IdHabitacion;
            existingReserva.FechaEntrada = reserva.FechaEntrada ?? existingReserva.FechaEntrada;
            existingReserva.FechaSalida = reserva.FechaSalida ?? existingReserva.FechaSalida;
            existingReserva.Total = reserva.Total ?? existingReserva.Total;

            await _appDBContext.SaveChangesAsync();
            return Ok(new { message = "Reserva editada con éxito", habitacion = existingReserva });
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteReserva(int id)
        {
            var reserva = await _appDBContext.Reservas.FindAsync(id);
            if (reserva == null)
                return NotFound("Reserva con ese ID no encontrada.");

            // Verificar si el cliente existe
            var clienteExiste = await _appDBContext.Clientes.AnyAsync(c => c.Id == reserva.IdCliente);
            if (clienteExiste)
                return BadRequest($"No se puede eliminar la reserva porque el cliente con ID {reserva.IdCliente} aún existe.");

            // Verificar si la habitación existe
            var habitacionExiste = await _appDBContext.Habitaciones.AnyAsync(h => h.Id == reserva.IdHabitacion);
            if (habitacionExiste)
                return BadRequest($"No se puede eliminar la reserva porque la habitación con ID {reserva.IdHabitacion} aún existe.");

            _appDBContext.Reservas.Remove(reserva);
            await _appDBContext.SaveChangesAsync();

            return Ok("Reserva eliminada exitosamente.");
        }

    }
}
