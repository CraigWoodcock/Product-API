package com.sparta.springcloud.productapi;

import com.sparta.springcloud.productapi.model.repositories.ProductRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.logging.Level;
import java.util.logging.Logger;

@SpringBootApplication

public class ProductApiApplication {

	private Logger logger = Logger.getLogger(ProductApiApplication.class.getName());

	public static void main(String[] args) {
		SpringApplication.run(ProductApiApplication.class, args);
	}

	@Bean
	public CommandLineRunner runner(ProductRepository productRepository){

		return args -> logger.log(Level.INFO,productRepository.findAll().toString());
	}

}
