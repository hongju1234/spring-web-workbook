package org.zerock.dao;

import jdk.vm.ci.meta.Local;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.zerock.jdbcex.dao.TodoDAO;
import org.zerock.jdbcex.domain.TodoVO;

import java.time.LocalDate;
import java.util.List;

public class TodoDAOTests {

    private TodoDAO todoDAO;

    @BeforeEach
    public void ready(){
        todoDAO = new TodoDAO();
    }

    @Test
    public void testTime() throws Exception{

        System.out.println(todoDAO.getTime());
    }

    // 등록 기능 테스트
    @Test
    public void testInsert() throws Exception {
        TodoVO todoVO = TodoVO.builder()
                .title("Sample Title...")
                .dueDate(LocalDate.of(2024,06,20))
                .build();

        todoDAO.insert(todoVO);
    }

    // 목록 기능 테스트
    @Test
    public void testList() throws Exception {

        List<TodoVO> list = todoDAO.selectAll();

        list.forEach(vo -> System.out.println(vo));
    }

    // 조회 기능 테스트
    @Test
    public void testSelectOne() throws Exception {

        Long tno = 1L; //반드시 존재하는 번호를 이용

        TodoVO vo = todoDAO.selectOne(tno);

        System.out.println(vo);
    }

    // 수정 기능 테스트
    @Test
    public void testUpdateOne() throws Exception {
        TodoVO todoVO = TodoVO.builder()
                .tno(1L)
                .title("Sample Title...")
                .dueDate(LocalDate.of(2024,06,20))
                .finished(true)
                .build();

        todoDAO.updateOne(todoVO);
    }
}
