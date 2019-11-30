package com.soict.hoangviet.controller.admin;

import com.soict.hoangviet.constant.SystemConstant;
import com.soict.hoangviet.dto.NewsDTO;
import com.soict.hoangviet.service.CategoryService;
import com.soict.hoangviet.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @Autowired
    private CategoryService categoryService;

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

    @RequestMapping(value = "/admin-news/edit", method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam(value = "id", required = false) Long id) {
        NewsDTO model = new NewsDTO();
        ModelAndView modelAndView = new ModelAndView("admin/edit");
        if (id != null) {
            model = newsService.findOne(id);
        }
        modelAndView.addObject(SystemConstant.CATEGORIES, categoryService.findAll());
        modelAndView.addObject(SystemConstant.MODEL, model);
        return modelAndView;
    }
}
