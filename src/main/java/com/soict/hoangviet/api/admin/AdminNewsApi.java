package com.soict.hoangviet.api.admin;

import com.soict.hoangviet.dto.NewsDTO;
import org.springframework.web.bind.annotation.*;

@RestController(value = "newsApiOfAdmin")
public class AdminNewsApi {

    @PostMapping("/api/admin-news")
    public NewsDTO createNews(@RequestBody NewsDTO newsDTO) {
        return newsDTO;
    }

    @PutMapping("/api/admin-news")
    public NewsDTO updateNews(@RequestBody NewsDTO newsDTO) {
        return newsDTO;
    }

    @DeleteMapping("/api/admin-news")
    public void deleteNews(@RequestBody Long[] ids) {
    }
}
