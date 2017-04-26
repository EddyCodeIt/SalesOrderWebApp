package com.sales.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sales.models.Product;

public interface ProductsRepo extends JpaRepository<Product, Long>{

}
