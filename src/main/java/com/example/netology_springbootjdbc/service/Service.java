package com.example.netology_springbootjdbc.service;

import com.example.netology_springbootjdbc.repository.Repository;
import lombok.AllArgsConstructor;

import java.util.List;

@org.springframework.stereotype.Service
@AllArgsConstructor
public class Service {
    private Repository repository;

    public List<String> getProductName(String name) {
        return repository.getProductName(name);
    }
}