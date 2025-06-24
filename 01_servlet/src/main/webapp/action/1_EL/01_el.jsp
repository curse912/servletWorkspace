<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.model.vo.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1. 스클립틀릿과 표현식을 이용하여 각 영역에 담긴 값을 추출</h3>
	<%-- ctrl + shift + / : 자동주석
		<%
		// request scope
		String classRoom = (String) request.getAttribute("classsRoom");
		Person student = (Person) request.getAttribute("student");
	
		// session scope
		String academy = (String) session.getAttribute("academy");
		Person teacher = (Person) session.getAttribute("teacher");
	%>
	
	<p>
		학원명 : <%= academy %> <br>
		강의장 : <%= classRoom %> <br>
		강사정보 : <%= teacher.getName() %>, <%= teacher.getAge() %>, <%= teacher.getGender() %> <br>
		수강생정보 : 
		<ul>
			<li> 이름 : <%= student.getName() %> </li>
			<li> 나이 : <%= student.getAge() %> </li>
			<li> 성별 :  <%= teacher.getGender() %> </li>
		</ul>
	</p> --%>
	
	<hr>
	<h3>2. EL을 이용해서 SCOPE에 저장된 값들 출력하기</h3>
	<p>
		학원명 : ${sessionScope.academy} <br>
		강의장 : ${classRoom} <br>
		강사정보 : ${teacher.name} , ${teacher.age} , ${teacher.gender} <br>
		<!-- 
			EL식으로 teacher에 접근시 teacher Person의 자료형 Person
			Person과 같은 VO클래스의 각 필드에 담긴 값을 출력하고자 한다면 객체명.필드명으로 접근하면 된다.
			.필드명으로 작성시, VO클래스 getter메서드를 찾아서 데이터를 바인딩한다.
		 -->
		수강생 정보 : 
		<ul>
			<li>${student.name}</li>
			<li>${student.age}</li>
			<li>${student.gender}</li>
		</ul> 
	</p>
	
	<hr>
	<h3>3. EL사용시 내장 객체들에 저장된 키값이 동일한 경우</h3>
	<!-- 
		EL은 공유범위가 제일 작은 Scope에서부터 키값을 검색해 나간다
		page -> request -> session -> applicstion
		내가 특별히 스코프를 지정하지 않은 경우, 위 순서대로 각스코프에서 내가 지정한 키값을 검색하여,
		존재하는 경우 해당 키값을 화면상에 바인딩한다.
	 -->
	Scope 값 : ${scope} <br>
	
	<hr>
	<h3>4. 직접 Scope 영역에 접근하여 데이터가져오기</h3>
	<%
		pageContext.setAttribute("scope","page");
	%>
	pageScope에 담긴 값 : ${scope} 또는 ${pageScope.scope} <br>
	requsetScope에 담긴값 : ${requestScope.scope} <br>		<!-- 저장된 값이 없는 경우 : 에러X, 공백이 출력 -->
	sessionScope에 담긴값 : ${sessionScope.scope} <br>
	applicationScope에 담긴값 : ${applictionScope.scope} <br>
		
</body>
</html>