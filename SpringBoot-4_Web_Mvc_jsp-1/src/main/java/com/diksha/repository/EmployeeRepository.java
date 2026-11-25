package com.diksha.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.diksha.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    List<Employee> findByName(String name);

    List<Employee> findByDep(String dep);
}