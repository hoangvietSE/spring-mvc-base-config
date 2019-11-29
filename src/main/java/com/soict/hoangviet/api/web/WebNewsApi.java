package com.soict.hoangviet.api.web;

import com.soict.hoangviet.dto.NewsDTO;
import org.springframework.web.bind.annotation.*;

@RestController(value = "newsApiOfWeb")
public class WebNewsApi {
    @PostMapping("/api/web-news")
    public NewsDTO createNews(@RequestBody NewsDTO newsDTO) {
        return newsDTO;
    }

    @PutMapping("/api/web-news")
    public NewsDTO updateNews(@RequestBody NewsDTO newsDTO) {
        return newsDTO;
    }

    @DeleteMapping("/api/web-news")
    public void deleteNews(@RequestBody Long[] ids) {
    }
}
