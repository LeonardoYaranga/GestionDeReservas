using Microsoft.EntityFrameworkCore;
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
        public required string? Cedula { get; set; }
        public required string? Nombre { get; set; }
        public required string? Apellido { get; set; }
        public required string? Telefono { get; set; }
        public required string? Direccion { get; set; }
        [JsonIgnore]
        public List<Reserva>? Reservas { get; set; }
    }

    public class Habitacion
    {
        [JsonIgnore]
        public  int? Id { get; set; }
        public required string? NumeroHabitacion { get; set; }
        public required string? Descripcion { get; set; }
        public required decimal? Precio { get; set; }
        public required string? Lugar { get; set; }
        [JsonIgnore]
        public List<Reserva>? Reservas { get; set; }
    }

    public class Reserva
    {
        [JsonIgnore]
        public int? Id { get; set; }
        public required int? IdCliente { get; set; }
        public required int? IdHabitacion { get; set; }
        public required DateTime? FechaEntrada { get; set; }
        public required DateTime? FechaSalida { get; set; }
        public required decimal? Total { get; set; }
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
        public required int? IdReserva { get; set; }
        public required string? Descripcion { get; set; }
        public required decimal? Costo { get; set; }
        [JsonIgnore]
        public Reserva? Reserva { get; set; }
    }
}
