package com.example.demo.service;

import com.example.demo.domain.Customer;
import com.example.demo.repository.CustomerRepository;
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

import java.util.Collections;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@ExtendWith(MockitoExtension.class)
class CustomerServiceImplTest {

    @Mock
    private CustomerRepository customerRepository;

    @InjectMocks
    private CustomerServiceImpl customerService;

    @Test
    @DisplayName("On getCustomers() should return page")
    void getCustomerPageShouldReturnPage() {
        PageImpl<Customer> page = new PageImpl<>(Collections.emptyList());
        PageRequest pageRequest = PageRequest.of(0, 2);
        Mockito.when(customerRepository.findAll(Mockito.any(PageRequest.class))).thenReturn(page);

        Page<Customer> actual = customerService.getCustomerPage(pageRequest);

        assertNotNull(actual);
        assertEquals(page, actual);
    }
}