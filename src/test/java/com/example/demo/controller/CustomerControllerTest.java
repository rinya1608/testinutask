package com.example.demo.controller;

import com.example.demo.domain.Customer;
import com.example.demo.dto.CustomerDTO;
import com.example.demo.mapper.DtoMapper;
import com.example.demo.service.CustomerService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@ExtendWith(MockitoExtension.class)
class CustomerControllerTest {

    @Mock
    private CustomerService customerService;
    @Mock
    private DtoMapper<CustomerDTO, Page<Customer>> mapper;

    @InjectMocks
    private CustomerController customerController;

    @Test
    @DisplayName("on getCustomers() should return ResponseEntity with ok and actual dto")
    void testGetCustomersShouldReturnREWithOKAndBody() {
        Customer customer = new Customer();
        List<Customer> customers = List.of(customer);
        CustomerDTO customerDTO = new CustomerDTO(1, 1, 1, 1L, customers);

        Mockito.when(mapper.toDto(Mockito.any(Page.class))).thenReturn(customerDTO);
        Mockito.when(customerService.getCustomerPage(Mockito.any(PageRequest.class)))
                .thenReturn(new PageImpl<>(customers));

        ResponseEntity<CustomerDTO> actual = customerController.getCustomers(1, 0);

        assertNotNull(actual);
        assertEquals(HttpStatus.OK, actual.getStatusCode());

        CustomerDTO dto = actual.getBody();
        assertNotNull(dto);
        assertEquals(customerDTO, dto);
    }
}