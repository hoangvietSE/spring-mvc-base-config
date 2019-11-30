package com.soict.hoangviet.service.impl;

import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.entity.NewsEntity;
import com.soict.hoangviet.converter.BaseConverter;
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
    BaseConverter<NewsDTO, NewsEntity> newsConverter;

    @Override
    public List<NewsDTO> findAll() {
        List<NewsDTO> lists = new ArrayList<>();
        List<NewsEntity> entities = newsRepository.findAll();
        for (NewsEntity entity : entities) {
            lists.add(newsConverter.toDTO(entity));
        }
        return lists;
    }

    @Override
    public List<NewsDTO> findAll(PageRequest pageRequest) {
        List<NewsDTO> lists = new ArrayList<>();
        List<NewsEntity> entities = newsRepository.findAll(pageRequest).getContent();
        for (NewsEntity entity : entities) {
            lists.add(newsConverter.toDTO(entity));
        }
        return lists;
    }

    @Override
    public long count() {
        return newsRepository.count();
    }

    @Override
    public NewsDTO findOne(Long id) {
        NewsEntity newsEntity = newsRepository.findOne(id);
        return newsConverter.toDTO(newsEntity);
    }
}
