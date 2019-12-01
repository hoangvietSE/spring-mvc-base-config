package com.soict.hoangviet.converter;

import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.entity.NewsEntity;
import org.springframework.stereotype.Component;

@Component
public class NewsConverter implements NewsBaseConverter<NewsDTO, NewsEntity> {

    @Override
    public NewsDTO toDTO(NewsEntity entity) {
        NewsDTO newsDTO = new NewsDTO();
        newsDTO.setId(entity.getId());
        newsDTO.setTitle(entity.getTitle());
        newsDTO.setContent(entity.getContent());
        newsDTO.setThumbnail(entity.getThumbnail());
        newsDTO.setShortDescription(entity.getShortDescription());
        newsDTO.setCategoryId(entity.getCategory().getId());
        newsDTO.setCategoryCode(entity.getCategory().getCode());
        return newsDTO;
    }

    @Override
    public NewsEntity toEntity(NewsDTO dto) {
        NewsEntity newsEntity = new NewsEntity();
        newsEntity.setTitle(dto.getTitle());
        newsEntity.setContent(dto.getContent());
        newsEntity.setThumbnail(dto.getThumbnail());
        newsEntity.setContent(dto.getContent());
        newsEntity.setShortDescription(dto.getShortDescription());
        return newsEntity;
    }

    @Override
    public NewsEntity toEntity(NewsEntity entity, NewsDTO dto) {
        entity.setContent(dto.getContent());
        entity.setThumbnail(dto.getThumbnail());
        entity.setTitle(dto.getTitle());
        entity.setShortDescription(dto.getShortDescription());
        return entity;
    }
}
