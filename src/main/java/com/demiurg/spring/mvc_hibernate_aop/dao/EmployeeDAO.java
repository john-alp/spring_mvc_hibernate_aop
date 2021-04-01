package com.demiurg.spring.mvc_hibernate_aop.dao;

import com.demiurg.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();
    public void saveEmployee(Employee employee);
    Employee getEmployee(int id);
    void deleteEmployee(int id);
}
