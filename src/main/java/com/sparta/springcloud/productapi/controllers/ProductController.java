package com.sparta.springcloud.productapi.controllers;

import com.sparta.springcloud.productapi.model.entities.ProductDTO;
import com.sparta.springcloud.productapi.model.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/all")
    public Iterable<ProductDTO> findAllProducts(){
        return productRepository.findAll();
    }

    @GetMapping("/allbyname/{name}")
    public Iterable<ProductDTO> findAllProductsByName(@PathVariable String name){
        return productRepository.findByNamePartialMatch(name);
    }
    @GetMapping("/byname/{name}")
    public Iterable<ProductDTO> getProductsByName(@PathVariable String name) {
        return productRepository.findByName(name);
    }

    @PostMapping("/create")
    public Iterable<ProductDTO> createProduct(@RequestBody ProductDTO product){
        productRepository.save(product);
        return productRepository.findAll();
    }

    @DeleteMapping("/delete/{id}")
    public Iterable<ProductDTO> deleteProduct(@PathVariable Integer id){
        productRepository.deleteById(id);
        return productRepository.findAll();
    }
}
