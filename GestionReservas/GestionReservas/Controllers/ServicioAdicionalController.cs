using Microsoft.AspNetCore.Mvc;

namespace GestionReservas.Controllers
{
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.EntityFrameworkCore;

    namespace GestionReservas.Controllers
    {
        [Route("api/[controller]")]
        [ApiController]
        public class ServicioAdicionalController : ControllerBase
        {
            private readonly AppDBContext _appDBContext;

            public ServicioAdicionalController(AppDBContext appDBContext)
            {
                _appDBContext = appDBContext;
            }

            [HttpGet]
            public async Task<ActionResult<IEnumerable<ServicioAdicional>>> GetServiciosAdicionales()
            {
                return await _appDBContext.ServiciosAdicionales.ToListAsync();
            }

            [HttpGet("{id}")]
            public async Task<ActionResult<ServicioAdicional>> GetServicioAdicional(int id)
            {
                var servicioAdicional = await _appDBContext.ServiciosAdicionales.FindAsync(id);
                if (servicioAdicional == null)
                {
                    return NotFound("Servicio adicional no encontrado");
                }
                return Ok(servicioAdicional);
            }

            [HttpPost]
            public async Task<ActionResult<ServicioAdicional>> PostServicioAdicional(ServicioAdicional servicioAdicional)
            {
                var reserva = await _appDBContext.Reservas.FindAsync(servicioAdicional.IdReserva);
                if (reserva == null)
                    return BadRequest($"La reserva con ID {servicioAdicional.IdReserva} no existe.");

                // Verificar si ya existe un servicio adicional con la misma descripción para la reserva
                var existeServicio = await _appDBContext.ServiciosAdicionales
                    .AnyAsync(s => s.IdReserva == servicioAdicional.IdReserva && s.Descripcion == servicioAdicional.Descripcion);
                if (existeServicio)
                    return BadRequest("Ya existe un servicio adicional con la misma descripción para esta reserva.");

                _appDBContext.ServiciosAdicionales.Add(servicioAdicional);
                await _appDBContext.SaveChangesAsync();

                var serviciosAdicionalIngresado = await _appDBContext.Clientes.FirstOrDefaultAsync((p => p.Id == servicioAdicional.Id));

                return Ok(new { message = "Servicio adicional ingresado con éxito", servicioAdicional = serviciosAdicionalIngresado });

            }

            [HttpPut("{id}")]
            public async Task<IActionResult> PutServicioAdicional(int id, ServicioAdicional servicioAdicional)
            {
                if (id < 1) return BadRequest("El ID no puede ser negativo o 0");

                var existingServicioAdicional = await _appDBContext.ServiciosAdicionales.FindAsync(id);
                if (existingServicioAdicional == null)
                    return NotFound("Servicio adicional con ese ID no encontrado");

                var reserva = await _appDBContext.Reservas.FindAsync(servicioAdicional.IdReserva);
                if (reserva == null)
                    return BadRequest($"La reserva con ID {servicioAdicional.IdReserva} no existe.");

                existingServicioAdicional.Descripcion = string.IsNullOrEmpty(servicioAdicional.Descripcion)
                    ? existingServicioAdicional.Descripcion
                    : servicioAdicional.Descripcion;
                existingServicioAdicional.Costo = servicioAdicional.Costo ?? existingServicioAdicional.Costo;
                existingServicioAdicional.IdReserva = servicioAdicional.IdReserva;

                await _appDBContext.SaveChangesAsync();
                return Ok(new { message = "Servicio adicional editado con éxito", servicioAdicional = existingServicioAdicional});
            }

            [HttpDelete("{id}")]
            public async Task<IActionResult> DeleteServicioAdicional(int id)
            {
                var servicioAdicional = await _appDBContext.ServiciosAdicionales.FindAsync(id);
                if (servicioAdicional == null)
                {
                    return NotFound("Servicio adicional no encontrado");
                }


                var reserva = await _appDBContext.Reservas.FindAsync(servicioAdicional.IdReserva);
                if (reserva != null)
                    return BadRequest($"Existe una reserva con ID {servicioAdicional.IdReserva} vinculada a este Servicio, no se puede borrar.");



                _appDBContext.ServiciosAdicionales.Remove(servicioAdicional);
                await _appDBContext.SaveChangesAsync();
                return Ok("Servicio adicional eliminado");
            }
        }
    }

}
