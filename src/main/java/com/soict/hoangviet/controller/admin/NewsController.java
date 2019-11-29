package com.soict.hoangviet.controller.admin;

import com.soict.hoangviet.constant.SystemConstant;
import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewsController {

    @Autowired
    NewsService newsService;

    @RequestMapping(value = "/admin-news/list", method = RequestMethod.GET)
    public ModelAndView listPage(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        NewsDTO model = new NewsDTO();
        PageRequest pageRequest = new PageRequest(page - 1, limit);
        model.setListResult(newsService.findAll(pageRequest));
        model.setTotalItem((int) newsService.count());
        model.setPage(page);
        model.setLimit(limit);
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
        ModelAndView modelAndView = new ModelAndView("admin/lists");
        modelAndView.addObject(SystemConstant.MODEL, model);
        return modelAndView;
    }
}
