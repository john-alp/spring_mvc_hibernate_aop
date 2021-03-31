package com.demiurg.spring.mvc_hibernate_aop.controller;

import com.demiurg.spring.mvc_hibernate_aop.entity.Employee;
import com.demiurg.spring.mvc_hibernate_aop.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller  // Controller (Контроллер) обрабатывает запрос пользователя,
// создаёт соответствующую Модель и передаёт её для отображения в Вид.
public class MyController {

    @Autowired // не понял, откуд бин взяли?
    private EmployeeService employeeService;

    @RequestMapping("/")  // @RequestMapping используется для мапинга (связывания) с URL для всего класса или для конкретного метода обработчика.
    public String showAllEmployees(Model model) {

        List<Employee> allEmployees = employeeService.getAllEmployees();

        model.addAttribute("allEmps", allEmployees);
        return "all_employees";
    }

    @RequestMapping("/addNewEmployee")
    public String addNewEmployee(Model model) {

        Employee employee = new Employee();
        model.addAttribute("employee", employee);

        return "employee_info";
    }
    // button Ok save
    @RequestMapping("/saveEmployee")  // @ModelAttribute ссылается на свойство объекта Model из view c уже заполненынми данными
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {

        employeeService.saveEmployee(employee);

        return "redirect:/";
    }

    @RequestMapping("/updateInfo")  // во вью будет отображаться с заполнеными формами
    public String updateEmployee(@RequestParam("empId") int id, Model model) {  //empId получаем из кнопки Update
        Employee employee = employeeService.getEmployee(id);
        model.addAttribute("employee", employee);
        return "employee_info";
    }
}