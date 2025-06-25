<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>1. formatNumber</h2>
	<p>
		숫자데이터의 포멧지정
		 - 표현하고자 하는 숫자 데이터의 형식을 원하는 쓰임에 맞게 지정하는 태그 <br><br>
		&lt; fmt:formatNumber value="출력할값" groupingUsed="true/false" type="percent/currency" currencySymbol="심볼" /&gt;
	</p>
	
	<c:set var="num1" value="123456789" />
	<c:set var="num2" value="0.756" />
	<c:set var="num3" value="50000" />
	
	단순출력 : ${num1} <br>
	세자리 단위로 구분하여 출력 : <fmt:formatNumber value="${num1}"/> <br>
	숫자 그대로 출력 : <fmt:formatNumber value="${num1}" groupingUsed="false" /> <br>
	
	percent : <fmt:formatNumber value="${num2}" type="percent"  /> <br>
	currency : <fmt:formatNumber value="${num3}" type="currency" /> <br>
	currencySymbol : <fmt:formatNumber value="${num3}" type="currency" currencySymbol="$" />
	
	<h2>2. formatDate</h2>
	<p>
		Java.util.Date객체의 출력형식을 지정하는 태그
	</p>
	<c:set var="current" value="<%= new java.util.Date() %>" />
	current : ${current} <br>
	
	<ul>
		<li>
			현재 날짜 : <fmt:formatDate value="${current}" type="date" />
		</li>
		<li>
			현재 시간 : <fmt:formatDate value="${current}" type="time" />
		</li>
		<li>
			현재 날짜 및 시간 : <fmt:formatDate value="${current}" type="both" />
		</li>
		<li>
			 커스터마이징 : <fmt:formatDate value="${current}" pattern="yyyy-mm-dd hh:mm:ss" />
		</li>
	</ul>
</body>
</html>