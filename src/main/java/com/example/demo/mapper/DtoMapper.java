package com.example.demo.mapper;

public interface DtoMapper<D, E> {
    D toDto(E entity);
}
