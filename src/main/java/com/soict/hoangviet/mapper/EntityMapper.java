package com.soict.hoangviet.mapper;

public interface EntityMapper<T, E> {
    T mapEntity(E entity);
}
