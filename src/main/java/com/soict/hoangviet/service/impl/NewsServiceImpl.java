package com.soict.hoangviet.service.impl;

import com.soict.hoangviet.converter.NewsBaseConverter;
import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.entity.CategoryEntity;
import com.soict.hoangviet.entity.NewsEntity;
import com.soict.hoangviet.converter.BaseConverter;
import com.soict.hoangviet.repository.CategoryRepository;
import com.soict.hoangviet.repository.NewsRepository;
import com.soict.hoangviet.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsRepository newsRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    NewsBaseConverter<NewsDTO, NewsEntity> newsConverter;

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

    @Override
    @Transactional
    public NewsDTO save(NewsDTO newsDTO) {
        CategoryEntity categoryEntity = categoryRepository.findOneByCode(newsDTO.getCategoryCode());
        NewsEntity editNewsEntity = new NewsEntity();
        if (newsDTO.getId() != null) {
            NewsEntity oldNews = newsRepository.findOne(newsDTO.getId());
            oldNews.setCategory(categoryEntity);
            editNewsEntity = newsConverter.toEntity(oldNews, newsDTO);
        } else {
            editNewsEntity = newsConverter.toEntity(newsDTO);
            editNewsEntity.setCategory(categoryEntity);
        }
        return newsConverter.toDTO(newsRepository.save(editNewsEntity));
    }

    @Override
    @Transactional
    public void delete(Long[] ids) {
        for (Long id : ids) {
            newsRepository.delete(id);
        }
    }
}
