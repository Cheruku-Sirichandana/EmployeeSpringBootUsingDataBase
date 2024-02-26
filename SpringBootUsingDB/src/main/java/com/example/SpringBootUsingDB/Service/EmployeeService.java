package com.example.SpringBootUsingDB.Service;

import com.example.SpringBootUsingDB.Entity.Employee;
import com.example.SpringBootUsingDB.Repository.EmployeeRepository;
import org.apache.taglibs.standard.lang.jstl.GreaterThanOperator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository repository;
    //pOST methods
    public Employee saveEmployee(Employee employee){
       return repository.save(employee);
    }
    public List<Employee> saveEmployees(List<Employee> employees){
        return repository.saveAll(employees);
    }
    //GET methods
    public List<Employee> getEmployees(){
        return repository.findAll();
    }
    public Employee getEmployeeById(int id){
        return repository.findById(id).orElse(null);
    }
    //Fetch based on name
    //findById is their in Maven but findByName is not their...so we need to create method for it
    public Employee getEmployeeByName(String name){
        return repository.findByName(name);
    }

    //delete
//    public String deleteById(int id){
//        repository.deleteById(id);
//        return "Deleted";
//    }

    public boolean findById(int id){
        if(repository.findById(id)==null){
            return false;
        }
        return true;
    }
    public boolean deleteEmployeeById(int id){
        if(repository.findById(id)==null){
            return false;
        }
       // repository.findById(id);
        repository.deleteById(id);
        return true;
    }


    public Employee findId(int id) {
        return repository.findById(id).orElse(null);
    }

    public List<Employee> findAll(){

        return repository.findAll();

    }
}
