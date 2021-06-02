using EmployeeWebDataBase.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeWebDataBase.DAL
{
    public class EmployeesDbContext : DbContext 
    {
        public DbSet<EmployeeModel> Employees { get; private set; }

        public EmployeesDbContext(DbContextOptions<EmployeesDbContext> options) : base(options)
        {
        }
    }
}
