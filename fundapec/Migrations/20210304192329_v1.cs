using Microsoft.EntityFrameworkCore.Migrations;

namespace fundapec.Migrations
{
    public partial class v1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "estudiantes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    matricula = table.Column<int>(nullable: false),
                    nombre = table.Column<string>(nullable: true),
                    indice = table.Column<decimal>(nullable: false),
                    carrera = table.Column<string>(nullable: true),
                    cuatrimestre = table.Column<int>(nullable: false),
                    creditos = table.Column<int>(nullable: false),
                    importPagar = table.Column<decimal>(nullable: false),
                    cobertura = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_estudiantes", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "estudiantes");
        }
    }
}
