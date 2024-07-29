package com.example.mpds.mapper;

import com.example.mpds.dto.UserDTO;
import com.example.mpds.entity.RoleEntity;
import com.example.mpds.entity.UserEntity;
import com.example.mpds.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.management.relation.Role;

@Component
public class UserMapper {
    @Autowired
    RoleRepository roleRepository;
    public UserEntity toEntity(UserDTO dto){
        RoleEntity userRole = roleRepository.findById((long)dto.getRoleId()).orElseThrow();

        UserEntity entity=new UserEntity();
        entity.setEmail(dto.getEmail());
        entity.setName(dto.getName());
        entity.setUserName(dto.getUserName());
    entity.setPassword(dto.getPassword());
    entity.setRole(userRole);
        return entity;

    }
    public UserDTO toDTO(UserEntity entity){

        UserDTO dto=new UserDTO();
        dto.setId(entity.getId());//set id for add product to cart
        dto.setEmail(entity.getEmail());
        dto.setName(entity.getName());
        dto.setRoleId(entity.getRole().getId());
        dto.setUserName(entity.getUserName());
        dto.setAddress(entity.getAddress());
        dto.setPassword(entity.getPassword());
        return dto;
    }
    //using for update ( store previous information)
    public UserEntity toEntity(UserDTO dto,UserEntity oldEntity){
        RoleEntity userRole = roleRepository.findById((long)dto.getRoleId()).orElseThrow();

        oldEntity.setPassword(dto.getPassword());
        oldEntity.setEmail(dto.getEmail());
        oldEntity.setName(dto.getName());
        oldEntity.setUserName(dto.getUserName());
        oldEntity.setRole(userRole);
        return oldEntity;
    }

    //New user from register API

}
