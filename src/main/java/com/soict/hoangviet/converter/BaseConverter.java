package com.soict.hoangviet.converter;

public interface BaseConverter<D, E> {
    D toDTO(E entity);

    E toEntity(D dto);
}
