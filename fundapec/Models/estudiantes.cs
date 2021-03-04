using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace fundapec.Models
{
    public class estudiantes
    {
        public int Id { get; set; }
        public int matricula { get; set; }
        public string nombre { get; set; }
        public decimal indice { get; set; }
        public string carrera { get; set; }
        public int cuatrimestre { get; set; }
        public int creditos { get; set; }
        public decimal importPagar { get; set; }
        public string cobertura { get; set; }


    }
}
