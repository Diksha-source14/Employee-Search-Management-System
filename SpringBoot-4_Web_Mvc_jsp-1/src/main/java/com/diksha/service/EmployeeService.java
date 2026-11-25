package com.diksha.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.diksha.entity.Employee;
import com.diksha.repository.EmployeeRepository;

@Service
public class EmployeeService {

    @Autowired
    EmployeeRepository employeeRepository;

    // Search by ID
    public Employee getEmployeeById(int id) {

        Optional<Employee> emp =
                employeeRepository.findById(id);

        if (emp.isPresent()) {
            return emp.get();
        }

        return null;
    }

    // Search by Name
    public List<Employee> getEmployeeByName(String name) {

        return employeeRepository.findByName(name);
    }

    // Search by Department
    public List<Employee> getEmployeeByDepartment(String department) {

        return employeeRepository.findByDep(department);
    }
}