package com.kh.basicServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lifeCycle
 */
@WebServlet("/life")
public class lifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/*
	 * Servlet의 생명주기
	 * 	- WAS 구동 내내 딱 하나의 객체만 생성된다.
	 *  - 최초 Client 호출시 객체가 생성된다.
	 * 
	 * */
    public lifeCycle() {
        super();
        System.out.println("서블릿 객체 색성");	
    }
    
    @Override
    public void init() throws ServletException {	//객체 생성시 자동 생성/실행 매서드
    	System.out.println("init 메서드 호출");
    }
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	//요청할때마다 실행하는 매서드
    	
    	// 사용자의 요청 처리방식 가져오기
    	String method = req.getMethod();	// "GET"/"POST"	가져오기
    	System.out.println("service() : "+ method);
    	if(method.equals("GET")) {
    		doGet(req,resp);
    	}else {
    		doPost(req,resp);
    	}
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
