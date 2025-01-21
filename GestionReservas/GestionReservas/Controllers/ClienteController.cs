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
            if (string.IsNullOrEmpty(cliente.Cedula))
            {
                return BadRequest("La cédula no puede ser nula o vacía.");
            }
            if (!ValidarCedulaEcuadoriana(cliente.Cedula))
            {
                return BadRequest("La cédula no es válida.");
            }
            var existeCliente = await _appDBContext.Clientes.AnyAsync(c => c.Cedula == cliente.Cedula);
            if (existeCliente)
                return BadRequest("Ya existe un cliente con la misma cédula.");

            _appDBContext.Clientes.Add(cliente);
            await _appDBContext.SaveChangesAsync();

            var clienteIngresado = await _appDBContext.Clientes.FirstOrDefaultAsync((p => p.Id == cliente.Id));
            return Ok(new { message = "Cliente ingresado con éxito", cliente = clienteIngresado });
        }

        private bool ValidarCedulaEcuadoriana(string cedula)
        {
            if (cedula.Length != 10)
            {
                return false;
            }

            if (!cedula.All(char.IsDigit))
            {
                return false;
            }

            int provincia = int.Parse(cedula.Substring(0, 2));

            if (provincia < 1 || provincia > 24)
            {
                return false;
            }

            int[] coeficientes = { 2, 1, 2, 1, 2, 1, 2, 1, 2 };
            int suma = 0;

            for (int i = 0; i < 9; i++)
            {
                int digito = int.Parse(cedula[i].ToString());
                int producto = digito * coeficientes[i];
                suma += (producto >= 10) ? producto - 9 : producto; 
            }

            int verificador = int.Parse(cedula[9].ToString());
            int modulo = suma % 10;
            int digitoVerificacion = (modulo == 0) ? 0 : 10 - modulo;

            return digitoVerificacion == verificador;
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutCliente(int id, Cliente cliente)
        {
            if (string.IsNullOrEmpty(cliente.Cedula))
            {
                return BadRequest("La cédula no puede ser nula o vacía.");
            }
            if (!ValidarCedulaEcuadoriana(cliente.Cedula))
            {
                return BadRequest("La cédula no es válida.");
            }
            var existeCliente = await _appDBContext.Clientes.AnyAsync(c => c.Cedula == cliente.Cedula && c.Id != id);
            if (existeCliente)
                return BadRequest("Ya existe un cliente con la misma cédula.");

            if (id < 1) return BadRequest("El ID no puede ser negativo o 0");
            var existingClient = await _appDBContext.Clientes.FindAsync(id);
            if (existingClient == null) return BadRequest("Cliente con ese ID no encontrado");

            existingClient.Cedula = string.IsNullOrEmpty(cliente.Cedula) ? existingClient.Cedula : cliente.Cedula;
            existingClient.Nombre = string.IsNullOrEmpty(cliente.Nombre) ? existingClient.Nombre : cliente.Nombre;
            existingClient.Apellido = string.IsNullOrEmpty(cliente.Apellido) ? existingClient.Apellido : cliente.Apellido;
            existingClient.Telefono = string.IsNullOrEmpty(cliente.Telefono) ? existingClient.Telefono : cliente.Telefono;
            existingClient.Direccion = string.IsNullOrEmpty(cliente.Direccion) ? existingClient.Direccion : cliente.Direccion;


            await _appDBContext.SaveChangesAsync();
            return Ok(new { message = "Cliente editado con éxito", cliente = existingClient });
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
            return Ok("Cliente eliminado correctamente");
        }
    }
}
