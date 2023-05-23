package com.example.demo.mapper;

import com.example.demo.domain.Customer;
import com.example.demo.dto.CustomerDTO;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;

@Component
public class CustomerDtoMapper implements DtoMapper<CustomerDTO, Page<Customer>> {
    @Override
    public CustomerDTO toDto(Page<Customer> entity) {
        return new CustomerDTO(entity.getNumber(),
                entity.getTotalPages(),
                entity.getSize(),
                entity.getTotalElements(),
                entity.getContent());
    }
}
