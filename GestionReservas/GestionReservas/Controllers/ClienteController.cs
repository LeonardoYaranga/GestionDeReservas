using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace GestionReservas.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClienteController : ControllerBase
    {
        private readonly AppDBContext _appDBContext;

        public ClienteController(AppDBContext appDBContext)
        {
            _appDBContext = appDBContext;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Cliente>>> GetClientes()
        {
            return await _appDBContext.Clientes.ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Cliente>> GetCliente(int id)
        {
            var cliente = await _appDBContext.Clientes.FindAsync(id);
            if (cliente == null)
            {
                return NotFound("Cliente no encontrado");
            }
            return Ok(cliente);
        }

        [HttpPost]
        public async Task<ActionResult<Cliente>> PostCliente(Cliente cliente)
        {
            _appDBContext.Clientes.Add(cliente);
            await _appDBContext.SaveChangesAsync();
            return Ok(cliente); 
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutCliente(int id, Cliente cliente)
        {
            if (id < 1) return BadRequest("El ID no puede ser negativo o 0");
            var existingClient = await _appDBContext.Clientes.FindAsync(id);
            if (existingClient == null) return BadRequest("Cliente con ese ID no encontrado");

            existingClient.Cedula = string.IsNullOrEmpty(cliente.Cedula) ? existingClient.Cedula : cliente.Cedula;
            existingClient.Nombre = string.IsNullOrEmpty(cliente.Nombre) ? existingClient.Nombre : cliente.Nombre;
            existingClient.Apellido = string.IsNullOrEmpty(cliente.Apellido) ? existingClient.Apellido : cliente.Apellido;
            existingClient.Telefono = string.IsNullOrEmpty(cliente.Telefono) ? existingClient.Telefono : cliente.Telefono;
            existingClient.Direccion = string.IsNullOrEmpty(cliente.Direccion) ? existingClient.Direccion : cliente.Direccion;


            await _appDBContext.SaveChangesAsync();
            return Ok(existingClient);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCliente(int id)
        {
            var cliente = await _appDBContext.Clientes.FindAsync(id);
            if (cliente == null)
            {
                return NotFound("Cliente no encontrado");
            }
            _appDBContext.Clientes.Remove(cliente);
            await _appDBContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
