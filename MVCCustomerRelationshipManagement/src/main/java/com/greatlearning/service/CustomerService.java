/**
 * 
 */
package com.greatlearning.service;

import java.util.List;

import com.greatlearning.entity.Customer;

/**
 * @author Aravind
 *
 */
public interface CustomerService {

	public List<Customer> findall();

	public Customer findbyID(int id);

	public void save(Customer customer);

	public void delete(int id);

}
