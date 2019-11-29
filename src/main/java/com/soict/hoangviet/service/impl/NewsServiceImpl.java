package com.soict.hoangviet.service.impl;

import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.entity.NewsEntity;
import com.soict.hoangviet.mapper.EntityMapper;
import com.soict.hoangviet.mapper.NewsEntityMapper;
import com.soict.hoangviet.repository.NewsRepository;
import com.soict.hoangviet.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsRepository newsRepository;

    @Autowired
    EntityMapper<NewsDTO, NewsEntity> newsEntityMapper;

    @Override
    public List<NewsDTO> findAll() {
        List<NewsDTO> lists = new ArrayList<>();
        List<NewsEntity> entities = newsRepository.findAll();
        for (NewsEntity entity : entities) {
            lists.add(newsEntityMapper.mapEntity(entity));
        }
        return lists;
    }

    @Override
    public List<NewsDTO> findAll(PageRequest pageRequest) {
        List<NewsDTO> lists = new ArrayList<>();
        List<NewsEntity> entities = newsRepository.findAll(pageRequest).getContent();
        for (NewsEntity entity : entities) {
            lists.add(newsEntityMapper.mapEntity(entity));
        }
        return lists;
    }

    @Override
    public long count() {
        return newsRepository.count();
    }
}
