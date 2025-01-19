using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace GestionReservas
{
    public class AppDBContext : DbContext
    {
        public AppDBContext(DbContextOptions<AppDBContext> options) : base(options) { }

        public DbSet<Reserva> Reservas { get; set; }
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Habitacion> Habitaciones { get; set; }
        public DbSet<ServicioAdicional> ServiciosAdicionales { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Cliente>(entity =>
            {
                entity.HasKey(c => c.Id);
                entity.Property(c => c.Cedula).IsRequired().HasMaxLength(10).IsUnicode();
                entity.Property(c => c.Nombre).IsRequired().HasMaxLength(100);
                entity.Property(c => c.Apellido).IsRequired().HasMaxLength(100);
                entity.Property(c => c.Telefono).IsRequired().HasMaxLength(10);
                entity.Property(c => c.Direccion).IsRequired().HasMaxLength(100);
            });

            modelBuilder.Entity<Habitacion>(entity =>
            {
                entity.HasKey(h => h.Id);
                entity.Property(h => h.NumeroHabitacion).IsRequired().HasMaxLength(10).IsUnicode();
                entity.Property(h => h.Descripcion).IsRequired().HasMaxLength(255);
                entity.Property(h => h.Precio).IsRequired().HasColumnType("decimal(10, 2)");
                entity.Property(h => h.Lugar).IsRequired().HasMaxLength(100);
            });

            modelBuilder.Entity<Reserva>(entity =>
            {
                entity.HasKey(r => r.Id);
                entity.Property(r => r.FechaEntrada).IsRequired();
                entity.Property(r => r.FechaSalida).IsRequired();
                entity.Property(r => r.Total).IsRequired().HasColumnType("decimal(10, 2)");

                entity.HasOne(r => r.Cliente)
                      .WithMany(c => c.Reservas)
                      .HasForeignKey(r => r.IdCliente)
                      .OnDelete(DeleteBehavior.Cascade);

                entity.HasOne(r => r.Habitacion)
                      .WithMany(h => h.Reservas)
                      .HasForeignKey(r => r.IdHabitacion)
                      .OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<ServicioAdicional>(entity =>
            {
                entity.HasKey(s => s.Id);
                entity.Property(s => s.Descripcion).IsRequired().HasMaxLength(255);
                entity.Property(s => s.Costo).IsRequired().HasColumnType("decimal(10, 2)");

                entity.HasOne(s => s.Reserva)
                      .WithMany(r => r.ServiciosAdicionales)
                      .HasForeignKey(s => s.IdReserva)
                      .OnDelete(DeleteBehavior.Cascade);
            });
        }
    }

    public class Cliente
    {
        [JsonIgnore]
        public int? Id { get; set; }
        [Required(ErrorMessage = "La cédula es obligatoria.")]
        [StringLength(10, MinimumLength = 10, ErrorMessage = "La cédula debe tener exactamente 10 caracteres.")]
        public string? Cedula { get; set; }
        [Required(ErrorMessage = "El nombre es obligatorio.")]
        [StringLength(100, ErrorMessage = "El nombre no debe exceder los 100 caracteres.")]
        public string? Nombre { get; set; }
        [Required(ErrorMessage = "El apellido es obligatorio.")]
        [StringLength(100, ErrorMessage = "El apellido no debe exceder los 100 caracteres.")]
        public string? Apellido { get; set; }
        [Required(ErrorMessage = "El teléfono es obligatorio.")]
        [StringLength(10, MinimumLength = 10, ErrorMessage = "El celular debe tener exactamente 10 caracteres.")]
        [Phone(ErrorMessage = "El teléfono debe tener un formato válido.")]
        public required string? Telefono { get; set; }
        [Required(ErrorMessage = "La dirección es obligatoria.")]
        [StringLength(100, ErrorMessage = "La dirección no debe exceder los 100 caracteres.")]
        public required string? Direccion { get; set; }
        [JsonIgnore]
        public List<Reserva>? Reservas { get; set; }
    }

    public class Habitacion
    {
        [JsonIgnore]
        public int? Id { get; set; }

        [Required(ErrorMessage = "El número de habitación es obligatorio.")]
        [StringLength(10, ErrorMessage = "El número de habitación no debe exceder los 10 caracteres.")]
        public string? NumeroHabitacion { get; set; }

        [Required(ErrorMessage = "La descripción es obligatoria.")]
        [StringLength(255, ErrorMessage = "La descripción no debe exceder los 255 caracteres.")]
        public string? Descripcion { get; set; }

        [Required(ErrorMessage = "El precio es obligatorio.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "El precio debe ser mayor a 0.")]
        public decimal? Precio { get; set; }

        [Required(ErrorMessage = "El lugar es obligatorio.")]
        [StringLength(100, ErrorMessage = "El lugar no debe exceder los 100 caracteres.")]
        public string? Lugar { get; set; }

        [JsonIgnore]
        public List<Reserva>? Reservas { get; set; }
    }

    public class Reserva
    {
        [JsonIgnore]
        public int? Id { get; set; }

        [Required(ErrorMessage = "El ID del cliente es obligatorio.")]
        [Range(1, int.MaxValue, ErrorMessage = "El ID del cliente debe ser mayor a 0.")]
        public int? IdCliente { get; set; }

        [Required(ErrorMessage = "El ID de la habitación es obligatorio.")]
        [Range(1, int.MaxValue, ErrorMessage = "El ID de la habitación debe ser mayor a 0.")]
        public int? IdHabitacion { get; set; }

        [Required(ErrorMessage = "La fecha de entrada es obligatoria.")]
        public DateTime? FechaEntrada { get; set; }

        [Required(ErrorMessage = "La fecha de salida es obligatoria.")]
        public DateTime? FechaSalida { get; set; }

        [Required(ErrorMessage = "El total es obligatorio.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "El total debe ser mayor a 0.")]
        public decimal? Total { get; set; }

        [JsonIgnore]
        public Cliente? Cliente { get; set; }

        [JsonIgnore]
        public Habitacion? Habitacion { get; set; }

        [JsonIgnore]
        public List<ServicioAdicional>? ServiciosAdicionales { get; set; }
    }

    public class ServicioAdicional
    {
        [JsonIgnore]
        public int? Id { get; set; }

        [Required(ErrorMessage = "El ID de la reserva es obligatorio.")]
        [Range(1, int.MaxValue, ErrorMessage = "El ID de la reserva debe ser mayor a 0.")]
        public int? IdReserva { get; set; }

        [Required(ErrorMessage = "La descripción es obligatoria.")]
        [StringLength(255, ErrorMessage = "La descripción no debe exceder los 255 caracteres.")]
        public string? Descripcion { get; set; }

        [Required(ErrorMessage = "El costo es obligatorio.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "El costo debe ser mayor a 0.")]
        public decimal? Costo { get; set; }

        [JsonIgnore]
        public Reserva? Reserva { get; set; }
    }

}
