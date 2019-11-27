package com.soict.hoangviet.service.impl;

import com.soict.hoangviet.service.HomeService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HomeServiceImpl implements HomeService {
    @Override
    public List<String> loadMenu() {
        List<String> menu = new ArrayList<>();
        menu.add("Blog Java");
        menu.add("Hướng dẫn học Java web");
        menu.add("Liên hệ");
        menu.add("Thanh toán");
        return menu;
    }
}
