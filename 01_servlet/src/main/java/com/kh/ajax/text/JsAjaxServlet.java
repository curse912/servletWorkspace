package com.kh.ajax.text;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JsAjaxServlet
 */
@WebServlet("/ajax/ajaxTest.do")
public class JsAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsAjaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("id");
		
		response.getWriter().print("ajax response : "+userId);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// content type을 지정안해주면 ??로 출력됨. 한글 한자같은 유니코드 기반의 문자는 다 깨짐
		String userId = request.getParameter("id");
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();
		out.println("ajax post 요청 결과 : " + userId + ", " + name);
		
		/*
		request.setCharacterEncoding("utf-8"); // POST 한글 처리
	    String userId = request.getParameter("id");    // "user01"
	    String name = request.getParameter("name");    // "mkm"

	    response.setCharacterEncoding("utf-8");
	    response.setContentType("text/plain"); // 또는 "application/json"도 가능

	    PrintWriter out = response.getWriter();
	    out.println("ajax post 요청 결과 : " + userId + ", " + name); // 클라이언트로 응답 전송
	    */
	}

}
