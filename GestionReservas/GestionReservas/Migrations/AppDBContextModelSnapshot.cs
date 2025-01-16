﻿// <auto-generated />
using System;
using GestionReservas;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace GestionReservas.Migrations
{
    [DbContext(typeof(AppDBContext))]
    partial class AppDBContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "9.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("GestionReservas.Cliente", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Apellido")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Cedula")
                        .IsRequired()
                        .HasMaxLength(10)
                        .IsUnicode(true)
                        .HasColumnType("nvarchar(10)");

                    b.Property<string>("Direccion")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Nombre")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Telefono")
                        .IsRequired()
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.HasKey("Id");

                    b.ToTable("Clientes");
                });

            modelBuilder.Entity("GestionReservas.Habitacion", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Descripcion")
                        .IsRequired()
                        .HasMaxLength(255)
                        .HasColumnType("nvarchar(255)");

                    b.Property<string>("Lugar")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("NumeroHabitacion")
                        .IsRequired()
                        .HasMaxLength(10)
                        .IsUnicode(true)
                        .HasColumnType("nvarchar(10)");

                    b.Property<decimal>("Precio")
                        .HasColumnType("decimal(10, 2)");

                    b.HasKey("Id");

                    b.ToTable("Habitaciones");
                });

            modelBuilder.Entity("GestionReservas.Reserva", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTime>("FechaEntrada")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("FechaSalida")
                        .HasColumnType("datetime2");

                    b.Property<int?>("IdCliente")
                        .HasColumnType("int");

                    b.Property<int?>("IdHabitacion")
                        .HasColumnType("int");

                    b.Property<decimal>("Total")
                        .HasColumnType("decimal(10, 2)");

                    b.HasKey("Id");

                    b.HasIndex("IdCliente");

                    b.HasIndex("IdHabitacion");

                    b.ToTable("Reservas");
                });

            modelBuilder.Entity("GestionReservas.ServicioAdicional", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<decimal>("Costo")
                        .HasColumnType("decimal(10, 2)");

                    b.Property<string>("Descripcion")
                        .IsRequired()
                        .HasMaxLength(255)
                        .HasColumnType("nvarchar(255)");

                    b.Property<int?>("IdReserva")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("IdReserva");

                    b.ToTable("ServiciosAdicionales");
                });

            modelBuilder.Entity("GestionReservas.Reserva", b =>
                {
                    b.HasOne("GestionReservas.Cliente", "Cliente")
                        .WithMany("Reservas")
                        .HasForeignKey("IdCliente")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("GestionReservas.Habitacion", "Habitacion")
                        .WithMany("Reservas")
                        .HasForeignKey("IdHabitacion")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.Navigation("Cliente");

                    b.Navigation("Habitacion");
                });

            modelBuilder.Entity("GestionReservas.ServicioAdicional", b =>
                {
                    b.HasOne("GestionReservas.Reserva", "Reserva")
                        .WithMany("ServiciosAdicionales")
                        .HasForeignKey("IdReserva")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.Navigation("Reserva");
                });

            modelBuilder.Entity("GestionReservas.Cliente", b =>
                {
                    b.Navigation("Reservas");
                });

            modelBuilder.Entity("GestionReservas.Habitacion", b =>
                {
                    b.Navigation("Reservas");
                });

            modelBuilder.Entity("GestionReservas.Reserva", b =>
                {
                    b.Navigation("ServiciosAdicionales");
                });
#pragma warning restore 612, 618
        }
    }
}
