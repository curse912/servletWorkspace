<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML 주석 -->
	<%-- JSP 주석 : 개발자 도구에 노출되지 않음. --%>
	<h1>스크립팅 원소</h1>
	<%
		// 스크립틀릿 : 일반적인 자바코드 작성
		int sum = 0;
		for(int i=1; i<100; i++){
			sum += i;
		}
		System.out.println("덧셈결과 : "+sum);
	%>
	<p>
	화면상에 자바 변수를 출력하고자한다면<br>
	1. 스크립틀릿 활용 : <% out.print(sum); /*jsp상에 존재하는 내장 객체 : 'out'*/ %><br>
	2. 표현식(출력식) 활용 : <%= sum %>
	</p>
	
	<%
		String[] names = {"심은성","강동현","서혜림","안정현"};
	%>
	<h5>배열의 길이 : <%= names.length %></h5>
	
	<h4>jsp에서 반복문 활용하기</h4>
	<ul>
	<% for(String name : names) {%>
		<li><%= name %></li>
	<%} %>
	</ul>

</body>
</html>