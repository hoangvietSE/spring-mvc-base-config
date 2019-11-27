package com.soict.hoangviet.service.impl;

import com.soict.hoangviet.constant.SystemConstant;
import com.soict.hoangviet.dto.UserDTO;
import com.soict.hoangviet.entity.RoleEntity;
import com.soict.hoangviet.entity.UserEntity;
import com.soict.hoangviet.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE_STATUS);

        if (userEntity == null) {
            throw new UsernameNotFoundException("User not found!");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (RoleEntity role : userEntity.getRoles()) {
            authorities.add(new SimpleGrantedAuthority(role.getCode()));
        }
        UserDTO userDTO = new UserDTO(
                userEntity.getUserName(),
                userEntity.getPassWord(),
                true,
                true,
                true,
                true,
                authorities);
        userDTO.setFullName(userEntity.getFullName());
        return userDTO;
    }

}
