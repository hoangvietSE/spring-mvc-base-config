package com.soict.hoangviet.service.impl;

import com.soict.hoangviet.converter.CategoryConverter;
import com.soict.hoangviet.dto.CategoryDTO;
import com.soict.hoangviet.entity.CategoryEntity;
import com.soict.hoangviet.repository.CategoryRepository;
import com.soict.hoangviet.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private CategoryConverter categoryConverter;

    @Override
    public Map<String, String> findAll() {
        List<CategoryEntity> categoryEntities = categoryRepository.findAll();
        Map<String, String> maps = new HashMap<>();
        for (CategoryEntity categoryEntity : categoryEntities) {
            maps.put(categoryEntity.getCode(), categoryEntity.getName());
        }
        return maps;
    }
}
