package com.soict.hoangviet.service;


import com.soict.hoangviet.dto.NewsDTO;
import org.springframework.data.domain.PageRequest;

import java.util.List;

public interface NewsService {
    List<NewsDTO> findAll();

    List<NewsDTO> findAll(PageRequest pageRequest);

    long count();

    NewsDTO findOne(Long id);

    NewsDTO save(NewsDTO newsDTO);

    void delete(Long[] ids);
}
