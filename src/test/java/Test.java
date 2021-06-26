import com.lp.dao.StudentsDao;
import com.lp.entity.Students;
import com.lp.service.StudentsService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.InputStream;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Test {

    @Autowired
    StudentsDao studentsDao;

    @org.junit.Test
    public void test(){
        System.out.println(studentsDao);
    }

    @org.junit.Test
    public void testDao() {
        System.out.println(studentsDao.selectOne(1));
    }
}
