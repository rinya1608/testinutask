package com.example.demo.service;

import com.example.demo.domain.Customer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CustomerService {
    Page<Customer> getCustomerPage(Pageable pageable);
}
