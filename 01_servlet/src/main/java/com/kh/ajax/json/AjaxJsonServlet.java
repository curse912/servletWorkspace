package com.kh.ajax.json;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.kh.model.vo.Person;

/**
 * Servlet implementation class AjaxJsonServlet
 */
@WebServlet("/ajax/json")
public class AjaxJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxJsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * JSON(JavaScript Object Notion)
		 *  - AJAX 비동기 통신시 가장 많이 사용되는 데이터 포맷
		 *  - 순수 문자열로 이루어져있어 가독성이 좋고, 가볍기 때문에 플랫폼간에 데이터 교환에 자주 사용된다.
		 * 
		 *  - JSON은 자바에서 제공하지 않은 객체표기법으로 사용하기 위해서는 라이브러리가 필요
		 *  1. json-simple-1.1.1.jar
		 *   - JSONArray : 배열형태의 자바스크립트 객체
		 *   - JSONObject : 객체형태의 자바스크립트 객체 
		 * 
		 * */
		JSONArray arr = new JSONArray();
		JSONObject jobj = new JSONObject();
		
		// ["홍길동","민경민"]
		arr.add("mkm");
		arr.add("sss");
		
		String str = "[1,2,3,4,5]";
		
		jobj.put("name", "홀길동");	//자바에서 표현 : {name:'홍길동}
		jobj.put("age",25);//{name:"홍길동",age : 25}
		
		response.setContentType("application/json; charset=UTF-8");	//charset=UTF-8 한글 이쁘게 나온다~~
//		response.getWriter().print(arr);
//		response.getWriter().print(jobj);
		
		List<Person> list = new ArrayList<>();
		list.add(new Person("황제성", 5, "남자"));
		list.add(new Person("쥴리아 로버츠", 15, "여자"));
		list.add(new Person("김고은", 25, "여자"));
		list.add(new Person("다프트펑크", 33, "남자"));
		
		String name = request.getParameter("searchId");
		
		Person p = null;
		for(Person person : list){
			if(person.getName().equals(name)) {
				p = person;
				break;
			}
		}
		/*
		 * Gson(Google Jsosn)
		 *  - JSON파일을 쉡게 일고, 쉽게 생성할 수 있는 기능을제공
		 *  - JAVA의 객체를 JSON으로 만들고자 할때 
		 *  *toJson(자바객체, 출력스트림)
		 *  
		 *  -JSON형태로 넘어온 데이터를  JAVA객체로 만들고자 할때
		 *  *fromJson(JSON데이터, 변경시킬 클래스)
		 * */
		Gson gson = new Gson();
//		String jsonStr = gson.toJson(p);
//		System.out.println(jsonStr);
		
		gson.toJson(p,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
