package com.example.demo.dto;

import com.example.demo.domain.Customer;

import java.util.List;

public class CustomerDTO {
    private Integer page;
    private Integer totalPages;
    private Integer count;
    private Long totalCount;

    private List<Customer> customers;

    public CustomerDTO(Integer page, Integer totalPages, Integer count, Long totalCount, List<Customer> customers) {
        this.page = page;
        this.totalPages = totalPages;
        this.count = count;
        this.totalCount = totalCount;
        this.customers = customers;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(Integer totalPages) {
        this.totalPages = totalPages;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Long totalCount) {
        this.totalCount = totalCount;
    }

    public List<Customer> getCustomers() {
        return customers;
    }

    public void setCustomers(List<Customer> customers) {
        this.customers = customers;
    }
}
