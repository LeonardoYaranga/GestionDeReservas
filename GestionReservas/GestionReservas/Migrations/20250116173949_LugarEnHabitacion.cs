using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GestionReservas.Migrations
{
    /// <inheritdoc />
    public partial class LugarEnHabitacion : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Lugar",
                table: "Habitaciones",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Lugar",
                table: "Habitaciones");
        }
    }
}
