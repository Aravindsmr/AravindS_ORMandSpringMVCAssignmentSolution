/**
 * 
 */
package com.greatlearning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.entity.Customer;
import com.greatlearning.service.CustomerServiceImpl;

/**
 * @author Aravind
 *
 */
@Controller
@RequestMapping("/custrshipmngmt")
public class CustomerController {

	@Autowired
	CustomerServiceImpl customerServiceImpl;

	@RequestMapping("/list")
	public String listCustomers(Model model) {
		List<Customer> customers = customerServiceImpl.findall();
		model.addAttribute("customers", customers);
		return "index";
	}

	@RequestMapping("/showFormforAdd")
	public String showFormforAdd(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "addCustomer";
	}

	@RequestMapping("/showFormforUpdate")
	public String showFormforUpdate(@RequestParam("id") int id, Model model) {
		Customer customer = customerServiceImpl.findbyID(id);
		model.addAttribute("customer", customer);
		return "addCustomer";
	}

	@PostMapping("/save")
	public String save(@RequestParam("id") int id, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("eMail") String eMail) {

		Customer customer;
		if (id != 0) {
			customer = customerServiceImpl.findbyID(id);
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.seteMail(eMail);
		} else {
			customer = new Customer(firstName, lastName, eMail);
		}

		customerServiceImpl.save(customer);
		return "redirect:/custrshipmngmt/list";
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("id") int id) {
		customerServiceImpl.delete(id);
		return "redirect:/custrshipmngmt/list";
	}
}
