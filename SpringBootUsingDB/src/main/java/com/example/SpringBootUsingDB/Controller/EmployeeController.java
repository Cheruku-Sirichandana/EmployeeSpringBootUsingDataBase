package com.example.SpringBootUsingDB.Controller;

import com.example.SpringBootUsingDB.Entity.Employee;
import com.example.SpringBootUsingDB.Service.EmployeeService;
import jdk.swing.interop.SwingInterOpUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService service;

    //POST methods
    @RequestMapping("/home")
    public String home() {
        System.out.println("aempadshfkasd");
        return "home";
    }

    @RequestMapping("/addEmployee")
    public String addEmployee() {
        System.out.println("dfhgsdgs");
        return "addEmployee";

    }

    @RequestMapping("/addEmployeeDone")
    public String addEmployeeDone(@RequestParam("id") int id, ModelMap model) {
        System.out.println(id);
        Employee employee = service.getEmployeeById(id);
        model.addAttribute("addEmployee", employee);
        model.addAttribute("id",id);


        return "addEmployeeDone";
    }

    @RequestMapping("/addEmployeeSuccess")
    public String addEmployeeSuccess(Employee employee, ModelMap model) {
        Employee emp = service.saveEmployee(employee);
        model.addAttribute("addEmployee", emp);
        return "home";
    }

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(ModelMap model) {
        System.out.println("deleting....");
        return "deleteEmployee";
    }

    @RequestMapping("/deleteEmployeeDone")
    public String deleteEmployeeDone(@RequestParam("id") int id, Model model) {
        if (service.getEmployeeById(id) != null) {
            model.addAttribute("employee", service.getEmployeeById(id));

        }
        boolean deletedEmployee = service.deleteEmployeeById(id);
        model.addAttribute("deletedEmployee", deletedEmployee);
        return "deleteEmployeeDone";
    }

    @RequestMapping("/deleteEmployeeSuccess")
    public String deleteEmployeeSuccess() {
        return "home";
    }

    //Search
    @RequestMapping("/searchEmployee")
    public String searchEmployee() {
        return "searchEmployee";
    }

    @RequestMapping("/searchEmployeeDone")
    public String searchEmployeeDone(@RequestParam("id") int id, ModelMap model) {

        boolean searchedEmployee = service.findById(id);
        if (searchedEmployee) {
            System.out.println("dhshjj.....");
            Employee employee = service.findId(id);
            model.addAttribute("searchEmployee", employee);


            // model.getAttribute("searchEmployee",service.findById(id));
            return "searchEmployeeDone";

        }
        return null;


    }

    //view
    @RequestMapping("/viewEmployees")
    public String viewEmployees(Model m) {
        List<Employee> employeeList = service.findAll();
        System.out.println("ALLLLLLLLLLLLLLLLLL");
        // m.addAttribute("viewEmployees",employeeList);
        //return "viewEmployees";
        m.addAttribute("viewEmployees", employeeList);
        System.out.println(employeeList);
            return "viewEmployees";

    }

    //update
    @RequestMapping("/updateEmployee")
    public String updateEmployee(){
        return "updateEmployee";
    }
    @RequestMapping("/updateEmployeeDone")
    public String updateEmployeeDone(@RequestParam("id") int id,Model model){
        Employee employee=service.findId(id);
        model.addAttribute("updateEmployee", employee);
        model.addAttribute("id",id);
        return "updateEmployeeDone";

    }
    @RequestMapping("/updateEmployeeSuccessfully")
    public String updateEmployeeSuccessfully(int id,String name,String role,String email){
        Employee employee=new Employee(id,name,role,email);
        System.out.println(employee);
        service.saveEmployee(employee);
        return "home";
    }

}













