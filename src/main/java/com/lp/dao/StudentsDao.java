package com.lp.dao;

import com.lp.entity.Students;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentsDao {

    Integer insertStudents(Students students);
    Integer updateStudents(Students students);
    Integer deleteStudents(Integer Id);
    Students selectOne(Integer Id);
    List<Students> selectAll();

}