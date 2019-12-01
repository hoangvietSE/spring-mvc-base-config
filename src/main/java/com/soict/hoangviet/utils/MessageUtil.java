package com.soict.hoangviet.utils;

import com.soict.hoangviet.constant.SystemConstant;

import java.util.HashMap;
import java.util.Map;

public class MessageUtil {
    public static Map<String, String> getMessage(String msg) {
        Map<String, String> result = new HashMap<>();
        String alert = "";
        String message = "";
        if (msg.contains("success")) {
            alert = "success";
            if (msg.contains("insert")) {
                message = "Thêm thành công";
            } else if (msg.contains("delete")) {
                message = "Xóa thành công";
            } else if (msg.contains("update")) {
                message = "Cập nhật thành công";
            }
        }
        if (msg.contains("error")) {
            alert = "danger";
            if (msg.contains("insert")) {
                message = "Thêm thất bại";
            } else if (msg.contains("delete")) {
                message = "Xóa thất bại";
            } else if (msg.contains("update")) {
                message = "Cập nhật thất bại";
            }
        }
        result.put(SystemConstant.ALERT, alert);
        result.put(SystemConstant.MESSAGE, message);
        return result;
    }
}
