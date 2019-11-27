package com.soict.hoangviet.security;

import com.soict.hoangviet.utils.SecurityUtil;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException {
        String targetUrl = determineTargetUrl(authentication);
        if (response.isCommitted()) {
            return;
        }
        redirectStrategy.sendRedirect(request, response, targetUrl);
    }

    @Override
    public RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

    @Override
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    private String determineTargetUrl(Authentication authentication) {
        StringBuilder url = new StringBuilder("");
        List<String> roles = SecurityUtil.getAuthorities();
        if(isAdmin(roles)){
            url.append("/admin-home");
        }else {
            url.append("/trang-chu");
        }
        return url.toString();
    }

    private Boolean isAdmin(List<String> roles) {
        if (roles.contains("ADMIN")){
            return true;
        }
        return false;
    }

    private Boolean isUser(List<String> roles) {
        if (roles.contains("USER")){
            return true;
        }
        return false;
    }
}
