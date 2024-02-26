package com.sparta.springcloud.productapi.model.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.Size;

import java.math.BigDecimal;

@Entity
@Table(name = "product")
public class ProductDTO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Size(max = 40)
    @Column(name = "name", length = 40)
    private String name;

    @Size(max = 150)
    @Column(name = "description", length = 150)
    private String description;

    @Column(name = "price", precision = 8, scale = 2)
    private BigDecimal price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "\n===Product=== \n"  +
                "id= '" + id + "', \n" +
                "name= '" + name + "', \n" +
                "description= '" + description + "', \n" +
                "price= '£" + price + "'" + "\n" ;
    }
}