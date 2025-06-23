package com.kh.basicServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 어노테이션으로 servlet 등록
//@WebServlet("/second")	//@webser 자동완성
@WebServlet(urlPatterns = {"/second","/second.do","/second.kh"})	//대부분의 서블릿은 위의 1:1 대응을 사용함.
public class AnnotationServlet extends HttpServlet{	// html용 서블릿
	//doget + ctrl + space
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("annotion servelt 호출!");
//		super.doGet(req, resp);
	}

}
