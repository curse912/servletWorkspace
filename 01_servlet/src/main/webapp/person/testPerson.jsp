<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Arrays"%>
    //import 하는 위치 : page내에
    
<%
	//스크립트 립 : 자바코드 작성영역
	System.out.println("1234");

	// 사용자 입력값 가져오기
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String animal = request.getParameter("animal");
	String foods [] = request.getParameterValues("food"); // 체크박스 =  반환형이 문자열 배열
	String recommend = (String)request.getAttribute("recommend");	//object 형태로 저장함 -> String 형태를 원한다면, 다운캐스팅 필요
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개취 검사 결과</title>
</head>
<body>
	<h1>개인 취향 검사 결과 jsp</h1>
	<p><%= name %>님의 개인취향 검사 결과는</p>
	<p><%= color %>색을 좋아합니다.</p>
	<p>좋아하는 동물은 <%= animal %>입니다.</p>
	
	<%if(foods == null){ %>
		<p>좋아하는 음식은 없습니다...</p>
	<% } else { %>
		<p>좋아하는 음식은 <%= Arrays.toString(foods) %>입니다.</p>
	<% } %>
	<p>오늘의 추천 메뉴는 <%= recommend %>입니다. 이거 어떠세요?</p>
</body>
</html>