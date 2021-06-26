package com.lp.service;

import com.lp.dao.StudentsDao;
import com.lp.entity.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class StudentsServiceImpl implements StudentsService{

    @Autowired
    private StudentsDao studentsDao;

    @Override
    public Integer insertStudents(Students students) {
        Integer integer = studentsDao.insertStudents(students);
        return integer;
    }

    @Override
    public Integer updateStudents(Students students) {
        Integer integer = studentsDao.updateStudents(students);
        return integer;
    }

    @Override
    public Integer deleteStudents(Integer Id) {
        Integer integer = studentsDao.deleteStudents(Id);
        return integer;
    }

    @Override
    public Students selectOne(Integer Id) {
        Students students = studentsDao.selectOne(Id);
        return students;
    }

    @Override
    public List<Students> selectAll() {
        List<Students> studentsList = studentsDao.selectAll();
        return studentsList;
    }
}
