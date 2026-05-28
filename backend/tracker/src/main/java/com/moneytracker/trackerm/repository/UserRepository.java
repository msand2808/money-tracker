package com.moneytracker.trackerm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.moneytracker.trackerm.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>{

}
