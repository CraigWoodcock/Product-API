package com.sparta.springcloud.productapi.model.repositories;

import com.sparta.springcloud.productapi.model.entities.ProductDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<ProductDTO, Integer> {
    Iterable<ProductDTO> findByName(String name);


    @Query("SELECT p FROM ProductDTO p WHERE p.name LIKE %:name%")
    Iterable<ProductDTO> findByNamePartialMatch(String name);
}