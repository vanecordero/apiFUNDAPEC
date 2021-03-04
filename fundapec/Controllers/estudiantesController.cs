using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using fundapec.Data;
using fundapec.Models;

namespace fundapec.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class estudiantesController : ControllerBase
    {
        private readonly fundapecContext _context;

        public estudiantesController(fundapecContext context)
        {
            _context = context; 
        }

        // GET: api/estudiantes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<estudiantes>>> Getestudiantes()
        {
            return await _context.estudiantes.ToListAsync();
        }

        // GET: api/estudiantes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<estudiantes>> Getestudiantes(int id)
        {
            var estudiantes = await _context.estudiantes.FindAsync(id);

            if (estudiantes == null)
            {
                return NotFound();
            }

            return estudiantes;
        }

        // PUT: api/estudiantes/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPut("{id}")]
        public async Task<IActionResult> Putestudiantes(int id, estudiantes estudiantes)
        {
            if (id != estudiantes.Id)
            {
                return BadRequest();
            }

            _context.Entry(estudiantes).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!estudiantesExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/estudiantes
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPost]
        public async Task<ActionResult<estudiantes>> Postestudiantes(estudiantes estudiantes)
        {
            _context.estudiantes.Add(estudiantes);
            await _context.SaveChangesAsync();

            return CreatedAtAction("Getestudiantes", new { id = estudiantes.Id }, estudiantes);
        }

        // DELETE: api/estudiantes/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<estudiantes>> Deleteestudiantes(int id)
        {
            var estudiantes = await _context.estudiantes.FindAsync(id);
            if (estudiantes == null)
            {
                return NotFound();
            }

            _context.estudiantes.Remove(estudiantes);
            await _context.SaveChangesAsync();

            return estudiantes;
        }

        private bool estudiantesExists(int id)
        {
            return _context.estudiantes.Any(e => e.Id == id);
        }
    }
}
