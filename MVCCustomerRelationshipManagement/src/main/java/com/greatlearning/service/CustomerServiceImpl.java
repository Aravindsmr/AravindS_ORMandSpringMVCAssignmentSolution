/**
 * 
 */
package com.greatlearning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.dao.CustomerDAO;
import com.greatlearning.entity.Customer;

/**
 * @author Aravind
 *
 */

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDAO customerDAOImpl;

	@Override
	public List<Customer> findall() {
		// TODO Auto-generated method stub
		return customerDAOImpl.findall();
	}

	@Override
	public Customer findbyID(int id) {
		// TODO Auto-generated method stub
		return customerDAOImpl.findbyID(id);
	}

	@Override
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		customerDAOImpl.save(customer);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		customerDAOImpl.delete(id);
	}

}
