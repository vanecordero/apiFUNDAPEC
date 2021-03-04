using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using fundapec.Models;

namespace fundapec.Data
{
    public class fundapecContext : DbContext
    {
        public fundapecContext (DbContextOptions<fundapecContext> options)
            : base(options)
        {
        }

        public DbSet<fundapec.Models.estudiantes> estudiantes { get; set; }
    }
}
