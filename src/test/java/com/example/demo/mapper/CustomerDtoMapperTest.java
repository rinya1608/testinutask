package com.example.demo.mapper;

import com.example.demo.domain.Customer;
import com.example.demo.dto.CustomerDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.PageImpl;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@ExtendWith(MockitoExtension.class)
class CustomerDtoMapperTest {

    @InjectMocks
    private CustomerDtoMapper mapper;

    @Test
    @DisplayName("on getDto() should return correct dto")
    void toDtoShouldReturnDto() {
        PageImpl<Customer> page = Mockito.mock(PageImpl.class);

        Customer customer = new Customer();
        List<Customer> customers = List.of(customer);
        int number = 0;
        int size = 2;
        int totalPages = 1;
        long totalElements = customers.size();


        Mockito.when(page.getSize()).thenReturn(size);
        Mockito.when(page.getTotalPages()).thenReturn(totalPages);
        Mockito.when(page.getNumber()).thenReturn(number);
        Mockito.when(page.getTotalElements()).thenReturn(totalElements);
        Mockito.when(page.getContent()).thenReturn(customers);

        CustomerDTO actual = mapper.toDto(page);

        assertNotNull(actual);
        assertEquals(size, actual.getCount());
        assertEquals(totalPages, actual.getTotalPages());
        assertEquals(number, actual.getPage());
        assertEquals(totalElements, actual.getTotalCount());
        assertEquals(customers, actual.getCustomers());
    }
}