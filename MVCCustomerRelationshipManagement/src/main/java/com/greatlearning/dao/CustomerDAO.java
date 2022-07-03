/**
 * 
 */
package com.greatlearning.dao;

import java.util.List;

import com.greatlearning.entity.Customer;

/**
 * @author Aravind
 *
 */
public interface CustomerDAO {

	public List<Customer> findall();

	public Customer findbyID(int id);

	public void save(Customer customer);

	public void delete(int id);

}
