package com.moneytracker.trackerm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moneytracker.trackerm.entity.User;
import com.moneytracker.trackerm.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    public User findById(Integer id){
        return userRepository.findById(id).orElseThrow();
    }


}
