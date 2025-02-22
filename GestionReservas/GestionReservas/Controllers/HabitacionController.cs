﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace GestionReservas.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HabitacionController : ControllerBase
    {
        private readonly AppDBContext _appDBContext;

        public HabitacionController(AppDBContext appDBContext)
        {
            _appDBContext = appDBContext;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Habitacion>>> GetHabitaciones()
        {
            return await _appDBContext.Habitaciones.ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Habitacion>> GetHabitacion(int id)
        {
            var habitacion = await _appDBContext.Habitaciones.FindAsync(id);
            if (habitacion == null)
                return NotFound("Habitación con ese ID no encontrada");

            return Ok(habitacion);
        }

        [HttpPost]
        public async Task<ActionResult<Habitacion>> PostHabitacion(Habitacion habitacion)
        {
            // Verificar si ya existe una habitación con el mismo número
            var existeHabitacion = await _appDBContext.Habitaciones.AnyAsync(h => h.NumeroHabitacion == habitacion.NumeroHabitacion);
            if (existeHabitacion)
                return BadRequest("Ya existe una habitación con el mismo número.");

            _appDBContext.Habitaciones.Add(habitacion);
            await _appDBContext.SaveChangesAsync();

            var habitacionIngresada = await _appDBContext.Habitaciones.FirstOrDefaultAsync((p => p.Id == habitacion.Id));

            return Ok(new { message = "Habitacion ingresada con éxito", habitacion = habitacionIngresada });

        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutHabitacion(int id, Habitacion habitacion)
        {
            if (id < 1)
                return BadRequest("El ID no puede ser negativo o 0");

            var existingHabitacion = await _appDBContext.Habitaciones.FindAsync(id);
            if (existingHabitacion == null)
                return NotFound("Habitación con ese ID no encontrada");

            existingHabitacion.NumeroHabitacion = string.IsNullOrEmpty(habitacion.NumeroHabitacion) ? existingHabitacion.NumeroHabitacion : habitacion.NumeroHabitacion;
            existingHabitacion.Descripcion = string.IsNullOrEmpty(habitacion.Descripcion) ? existingHabitacion.Descripcion : habitacion.Descripcion;
            existingHabitacion.Precio = habitacion.Precio ?? existingHabitacion.Precio;
            existingHabitacion.Lugar=habitacion.Lugar ?? existingHabitacion.Lugar;

            await _appDBContext.SaveChangesAsync();
     
            return Ok(new { message = "Habitacion editada con éxito", habitacion = existingHabitacion });

        }


        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteHabitacion(int id)
        {
            var habitacion = await _appDBContext.Habitaciones.FindAsync(id);
            if (habitacion == null)
                return NotFound("Habitación con ese ID no encontrado.");

            var tieneReservas = await _appDBContext.Reservas.AnyAsync(r => r.IdHabitacion == id);
            if (tieneReservas)
                return BadRequest("No se puede eliminar la habitacion porque tiene reservas asociadas.");

            _appDBContext.Habitaciones.Remove(habitacion);
            await _appDBContext.SaveChangesAsync();

            return Ok("Habitación eliminado exitosamente.");
        }

    }
}
