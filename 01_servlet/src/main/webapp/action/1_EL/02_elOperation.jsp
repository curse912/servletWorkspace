<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL 연산</h1>
	<h3> 1. 산술 연산</h3>
	<p>
		* 스크립틀릿 사용시
		<%-- 10+3 = <%= (int)request.getAttribute("big") + (int)request.getAttribute("samll") %> --%>
	</p>
	<p> 
		*EL을 이용한 연산<br>
		10 + 3 = ${big + small} <br>
		${big} - ${small} = ${big - small} <br>
		${big} * ${small} = ${big * small} <br>
		${big} / ${small} = ${big div small} <br>
		${big} % ${small} = ${big mod small} <br>
	</p>
	
	<h3>2. 숫자간 대소 비교</h3>
	<p>
		10 > 3 : ${big > small} 또는 ${big gt small}	<br>
		10 &lt; 3 : ${big < small} 또는 ${big lt small}	<br>
		10 >= 3 : ${big ge small} <br>
		10 &lt;= 3 : ${big le small}
	</p>
	
	<h3>3. 동등연산 비교</h3>
	<p>
		* 스트립틀립 방식<br>
		sOne과 sTwo가 일치합니까? <%= request.getAttribute("sOne").equals(request.getAttribute("sTwo")) %> <br>
		sOne과 sTwo가 일치합니까? <%= request.getAttribute("sOne") == request.getAttribute("sTwo") %>
	</p>
	
	<p>
		* El 연산 <br>
		10 과 3이 일치 합니까? : ${big == small }또는 ${big eq small}	 <br>
		big 과 10이 일치합니까? : ${big == 10}, ${big eq 10 } <br>
		
		sOne과 sTwo가 일치합니까? : ${sOne eq sTwo}, ${sOne == sTwo}
		<!-- EL에서 == 비교는 자바의 equals() 방식으로 작동한다. -->
		
		sOne과 sTwo가 일치하지 않습니까? ${sOne ne sTwo}, ${sOne != sTwo} <br>
		sOne에 저아된 값이 " 안녕"과 일치합니까? : ${sOne == "안녕"} 또는 ${sOne eq '안녕'}
	</p>
	
	<hr>
	 
	<h3> 4. 객체가 null 인지, 또는 List가 비어있는지 체크할 수 있는 연산자 </h3>
	<p>
		pTwo가 null 입니까? : ${pTwo == null} 또는 ${empty pTwo} <br>
		pOne이 null 입니까? : ${pOne eq null} 또는 ${empty pOne} <br>
		pOne이 null이 아닙니까? : ${pOne ne null} 또는 ${!empty pOne} <br>
		
		lOne이 비어있습니까? : ${empty lOne} <br>
		lTwo가 비어있습니까? : ${empty lTwo} <br>		
	</p>
	
	<h3>5. 논리연산자</h3>
	<p> 
		AND 연산 :  ${true && true} 또는 ${true and true}<br>
		OR 연산 : ${false || true}또는 ${false or true}
	</p>	
	
	<script>
		const name = "은성";
		console.log("제 이름은 "+ name +"입니다");
		console.log(`제 이름은 \${name} 입니다.`);
	</script>
	
	
</body>
</html>
