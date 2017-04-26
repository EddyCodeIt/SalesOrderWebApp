package com.sales.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sales.models.Customer;

public interface CustomersRepo extends JpaRepository<Customer, Long>{

}
