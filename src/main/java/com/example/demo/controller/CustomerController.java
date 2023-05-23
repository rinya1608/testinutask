package com.example.demo.controller;

import com.example.demo.domain.Customer;
import com.example.demo.dto.CustomerDTO;
import com.example.demo.mapper.DtoMapper;
import com.example.demo.service.CustomerService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/customer")
public class CustomerController {

    private final CustomerService customerService;
    private final DtoMapper<CustomerDTO, Page<Customer>> mapper;

    public CustomerController(CustomerService customerService, DtoMapper<CustomerDTO, Page<Customer>> mapper) {
        this.customerService = customerService;
        this.mapper = mapper;
    }

    @GetMapping
    public ResponseEntity<CustomerDTO> getCustomers(@RequestParam(defaultValue = "5") Integer size,
                                                    @RequestParam(defaultValue = "1") Integer page) {
        Page<Customer> customerPage = customerService.getCustomerPage(PageRequest.of(page, size));
        CustomerDTO customerDTO = mapper.toDto(customerPage);
        return ResponseEntity.ok(customerDTO);
    }
}
