using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeWebDataBase.DAL
{
    public class AccountsDbContext : IdentityDbContext 
    {
        public AccountsDbContext(DbContextOptions<AccountsDbContext> options) : base(options)
        {
        }
    }
}
