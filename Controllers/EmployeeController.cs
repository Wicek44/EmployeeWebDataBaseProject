using EmployeeWebDataBase.DAL;
using EmployeeWebDataBase.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeWebDataBase.Controllers
{

    
    public class EmployeeController : Controller
    {
        private EmployeesDbContext EmployeesDbContext;

        public EmployeeController(EmployeesDbContext employeesDbContext)
        {
            EmployeesDbContext = employeesDbContext;
        }

        public IActionResult Index()
        {
            if(User.IsInRole("Administrator") || User.IsInRole("Aaccountant") || User.IsInRole("Employee") || User.IsInRole("Guest"))
            {
                var employees = EmployeesDbContext.Employees.ToList();
                return View(employees);
            }
            
            return RedirectToAction("PleaseLogin");
        }

        [Authorize(Roles = "Administrator,Accountant,Employee,Guest")]
        public ActionResult Edit(int personId)
        {
            var employee = EmployeesDbContext.Employees.Where(x => x.ID == personId).FirstOrDefault();
            return View(employee);
        }

        [Authorize(Roles = "Administrator")]
        public ActionResult Delete(int personId)
        {
            var employee = EmployeesDbContext.Employees.Where(x => x.ID == personId).FirstOrDefault();
            EmployeesDbContext.Employees.Remove(employee);
            EmployeesDbContext.SaveChanges();

            return RedirectToAction("Index");
        }

        [Authorize(Roles = "Administrator")]
        public ActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Add(EmployeeModel employee)
        {
            if(ModelState.IsValid)
            {
                EmployeesDbContext.Employees.Add(employee);
                EmployeesDbContext.SaveChanges();
                return RedirectToAction("Index");
            }

            return View();
            
        }

        [HttpPost]
        public ActionResult Edit(EmployeeModel employee)
        {
            if(ModelState.IsValid)
            {
                var employeeToEdit = EmployeesDbContext.Employees.Where(x => x.ID == employee.ID).FirstOrDefault();
                EmployeesDbContext.Employees.Remove(employeeToEdit);
                EmployeesDbContext.Employees.Add(employee);
                EmployeesDbContext.SaveChanges();

                return RedirectToAction("Index");
            }

            return View();
        }

        public IActionResult PleaseLogin()
        {
            return View();
        }
    }
}
