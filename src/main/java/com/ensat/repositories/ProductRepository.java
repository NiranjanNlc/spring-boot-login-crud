package com.ensat.repositories;

import com.ensat.entities.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, Integer> {


    Product findOne(Integer id);

    void delete(Integer id);
}
