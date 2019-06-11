<%@page import = "java.util.List" %>
<%@page import = "java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

<body>

this page is index page !! <br/>
Hello JSP!!

<%

 List<String> nm = new ArrayList<String>();
 nm.add("방효진");
 nm.add("정예림");
 nm.add("김경민");

%>

 <h2> 수업참가학생 </h2>
 
 <%
 for (int i = 0; i < nm.size(); i++) { 
 %>

  <%=nm.get(i) %>


<%
 }
%>

<h2> 학생정보 </h2>

 <%  
for(int i = 0; i < nm.size(); i++) {
  %>
	
	<input type = "button" value = "<%=nm.get(i) %>" onclick="action('<%=nm.get(i)%>')"/>
	
	<%
   }
	%>


</body>

<script>
 
function action(name) {
	alert("선택한 학생은 " + name + " 입니다.");
}

</script>


</html>
