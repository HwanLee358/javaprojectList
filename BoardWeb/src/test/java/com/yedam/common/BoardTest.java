package com.yedam.common;


import com.yedam.service.BoardService;
import com.yedam.service.BoardServiceImpl;

public class BoardTest {
	public static void main(String[] args) {
		BoardService svc = new BoardServiceImpl();
		svc.boardList(1).forEach(board -> System.out.println(board));
		
	}
}
