package com.code.crm.controller;

import com.code.crm.model.Customer;
import com.code.crm.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CustomerController {
    @Autowired
    CustomerService service;

    @GetMapping("/")
    public String getCustomers(Model model){
        model.addAttribute("customers", service.getAllCustomer());
        return "home.jsp";
    }

    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("customer", new Customer());
        return "form.jsp";
    }

    @GetMapping("/edit")
    public String update(@RequestParam("id") int id, Model model){
        model.addAttribute("customer", service.getCustomer(id));
        return "form.jsp";
    }

    @PostMapping("/save")
    public String createCustomer(@ModelAttribute("customer") Customer customer) {
        service.saveCustomer(customer);
        return "redirect:/";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("id") int id) {
        service.deleteCustomer(id);
        return "redirect:/";
    }
}
