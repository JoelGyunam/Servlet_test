<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
<%--
1. 점수들의 평균 구하기
스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.
int[] scores = {80, 90, 100, 95, 80};
 --%>

<h3>1. 점수들의 평균 구하기</h3><hr>

<%
int[] scores = {80, 90, 100, 95, 80};
int sum = 0;

for(int i = 0; i < scores.length; i++){
	sum += scores[i];
}

double avg = (double)sum / scores.length;
%>

<div>점수 평균은 <%=avg%> 입니다.</div><br><br>

<%--
2. 채점 결과
아래 채점표로 시험점수가 몇점인지 구하세요.
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
--%>

<h3>2. 채점 결과</h3><hr>
<%-- 
<%
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

int oxScore = 0;
for(int i = 0; i < scoreList.size(); i++){
	if(scoreList.get(i).equals("O")){
		oxScore +=1;
	}
}
%>


<div> <%= oxScore %></div>
--%>

<h3>3. 1부터 n까지의 합계를 구하는 함수</h3><hr>
<%-- 
jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
만든 함수를 이용해서 50까지의 합의 결과를 출력하세요.
--%>

<%!
public int summer(int input1){
	int sum = 0;
	for(int i=1; i <= input1; i++){
		sum += i;
	}
	return sum;
};
%>

<div>1에서 50까지의 합은 <%= summer(50) %> </div><br><br>

<h3>4. 나이 구하기</h3><hr>
<%--
주어진 생년월일을 가진 사람의 나이를 구하세요.
String birthDay = "20010820";
 --%>

<%!
public int ager(String birthday){
	int year = Integer.parseInt(birthday.substring(0,4));
	int age = 2023 - year;
	return age;
}
%>
<div>20010820 의 나이는  <%= ager("20010820") %> </div><br><br>


</body>
</html>