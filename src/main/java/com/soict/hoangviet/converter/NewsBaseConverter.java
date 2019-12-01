package com.soict.hoangviet.converter;

import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.entity.NewsEntity;

public interface NewsBaseConverter<D, E> extends BaseConverter<D, E> {
    E toEntity(E entity, D dto);
}
