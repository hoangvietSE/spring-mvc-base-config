package com.soict.hoangviet.service;

import com.soict.hoangviet.dto.CategoryDTO;
import com.soict.hoangviet.entity.CategoryEntity;

import java.util.List;
import java.util.Map;

public interface CategoryService {
    Map<String, String> findAll();

    CategoryEntity findOneByCode(String code);
}
