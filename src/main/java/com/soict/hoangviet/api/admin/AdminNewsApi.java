package com.soict.hoangviet.api.admin;

import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController(value = "newsApiOfAdmin")
public class AdminNewsApi {

    @Autowired
    private NewsService newsService;

    @PostMapping("/api/admin-news")
    public NewsDTO createNews(@RequestBody NewsDTO newsDTO) {
        return newsService.save(newsDTO);
    }

    @PutMapping("/api/admin-news")
    public NewsDTO updateNews(@RequestBody NewsDTO newsDTO) {
        return newsService.save(newsDTO);
    }

    @DeleteMapping("/api/admin-news")
    public void deleteNews(@RequestBody Long[] ids) {
        newsService.delete(ids);
    }
}
