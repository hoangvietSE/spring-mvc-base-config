package com.soict.hoangviet.mapper;

import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.entity.NewsEntity;
import org.springframework.stereotype.Component;

@Component
public class NewsEntityMapper implements EntityMapper<NewsDTO, NewsEntity> {

    @Override
    public NewsDTO mapEntity(NewsEntity entity) {
        NewsDTO newsDTO = new NewsDTO();
        newsDTO.setTitle(entity.getTitle());
        newsDTO.setContent(entity.getContent());
        newsDTO.setThumbnail(entity.getThumbnail());
        newsDTO.setShortDescription(entity.getShortDescription());
        newsDTO.setCategoryId(entity.getCategory().getId());
        newsDTO.setCategoryCode(entity.getCategory().getCode());
        return newsDTO;
    }
}
