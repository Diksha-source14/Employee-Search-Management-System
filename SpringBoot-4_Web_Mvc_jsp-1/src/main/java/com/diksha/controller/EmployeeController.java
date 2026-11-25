package com.diksha.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.diksha.entity.Employee;
import com.diksha.service.EmployeeService;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    // Home Page
    @GetMapping("/home")
    public ModelAndView getHomePage() {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("home");

        return mav;
    }

    // Search by ID / Name / Department
    @GetMapping("/searchEmployee")
    public ModelAndView searchEmployee(
            @RequestParam("keyword") String keyword) {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("home");

        keyword = keyword.trim();

        // 1. Search by ID
        try {

            int id = Integer.parseInt(keyword);

            Employee employee =
                    employeeService.getEmployeeById(id);

            if (employee != null) {

                mav.addObject("employee", employee);
                return mav;
            }

        } catch (NumberFormatException e) {

            // Not an ID
        }

        // 2. Search by Name
        List<Employee> employees =
                employeeService.getEmployeeByName(keyword);

        if (!employees.isEmpty()) {

            mav.addObject("employees", employees);
            return mav;
        }

        // 3. Search by Department
        employees =
                employeeService.getEmployeeByDepartment(keyword);

        if (!employees.isEmpty()) {

            mav.addObject("employees", employees);
            return mav;
        }

        // Not Found
        mav.addObject(
                "msg",
                "Employee Not Found with ID / Name / Department : "
                        + keyword
        );

        return mav;
    }
}