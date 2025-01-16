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
            // Verificar si el cliente existe
            var cliente = await _appDBContext.Clientes.FindAsync(reserva.IdCliente);
            if (cliente == null)
                return BadRequest($"El cliente con ID {reserva.IdCliente} no existe.");

            // Verificar si la habitación existe
            var habitacion = await _appDBContext.Habitaciones.FindAsync(reserva.IdHabitacion);
            if (habitacion == null)
                return BadRequest($"La habitación con ID {reserva.IdHabitacion} no existe.");

            _appDBContext.Reservas.Add(reserva);
            await _appDBContext.SaveChangesAsync();
            return CreatedAtAction(nameof(GetReserva), new { id = reserva.Id }, reserva);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutReserva(int id, Reserva reserva)
        {
            if (id < 1)
                return BadRequest("El ID no puede ser negativo o 0");

            var existingReserva = await _appDBContext.Reservas.FindAsync(id);
            if (existingReserva == null)
                return NotFound("Reserva con ese ID no encontrada");

            // Verificar si el cliente existe
            var cliente = await _appDBContext.Clientes.FindAsync(reserva.IdCliente);
            if (cliente == null)
                return BadRequest($"El cliente con ID {reserva.IdCliente} no existe.");

            // Verificar si la habitación existe
            var habitacion = await _appDBContext.Habitaciones.FindAsync(reserva.IdHabitacion);
            if (habitacion == null)
                return BadRequest($"La habitación con ID {reserva.IdHabitacion} no existe.");

            existingReserva.IdCliente = reserva.IdCliente;
            existingReserva.IdHabitacion = reserva.IdHabitacion;
            existingReserva.FechaEntrada = reserva.FechaEntrada ?? existingReserva.FechaEntrada;
            existingReserva.FechaSalida = reserva.FechaSalida ?? existingReserva.FechaSalida;
            existingReserva.Total = reserva.Total ?? existingReserva.Total;

            await _appDBContext.SaveChangesAsync();
            return Ok(existingReserva);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteReserva(int id)
        {
            var reserva = await _appDBContext.Reservas.FindAsync(id);
            if (reserva == null)
                return NotFound("Reserva con ese ID no encontrada");


            // Verificar si el cliente existe
            var cliente = await _appDBContext.Clientes.FindAsync(reserva.IdCliente);
            if (cliente != null)
                return BadRequest($"Existe un cliente con ID {reserva.IdCliente}, por lo cual no se puede eliminar.");

            // Verificar si la habitación existe
            var habitacion = await _appDBContext.Habitaciones.FindAsync(reserva.IdHabitacion);
            if (habitacion != null)
                return BadRequest($"Existe una habitación con ID {reserva.IdHabitacion},  por lo cual no se puede eliminar.");

            _appDBContext.Reservas.Remove(reserva);
            await _appDBContext.SaveChangesAsync();

            return Ok("Reserva eliminada");
        }
    }
}
