package com.example.SpringBootUsingDB.Repository;

import com.example.SpringBootUsingDB.Entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee,Integer> {

    Employee findByName(String name);
}
