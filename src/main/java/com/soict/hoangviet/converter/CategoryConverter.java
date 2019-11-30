package com.soict.hoangviet.converter;

import com.soict.hoangviet.dto.CategoryDTO;
import com.soict.hoangviet.entity.CategoryEntity;
import org.springframework.stereotype.Component;

@Component
public class CategoryConverter implements BaseConverter<CategoryDTO, CategoryEntity> {
    @Override
    public CategoryDTO toDTO(CategoryEntity entity) {
        CategoryDTO categoryDTO = new CategoryDTO();
        categoryDTO.setId(entity.getId());
        categoryDTO.setCode(entity.getCode());
        categoryDTO.setName(entity.getName());
        return categoryDTO;
    }

    @Override
    public CategoryEntity toEntity(CategoryDTO dto) {
        CategoryEntity categoryEntity = new CategoryEntity();
        categoryEntity.setCode(dto.getCode());
        categoryEntity.setName(dto.getName());
        return categoryEntity;
    }
}
