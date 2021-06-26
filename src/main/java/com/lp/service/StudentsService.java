package com.lp.service;

import com.lp.entity.Students;

import java.util.List;

public interface StudentsService {
    Integer insertStudents(Students students);
    Integer updateStudents(Students students);
    Integer deleteStudents(Integer Id);
    Students selectOne(Integer Id);
    List<Students> selectAll();
}
