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
 nm.add("��ȿ��");
 nm.add("������");
 nm.add("����");

%>

 <h2> ���������л� </h2>
 
 <%
 for (int i = 0; i < nm.size(); i++) { 
 %>

  <%=nm.get(i) %>


<%
 }
%>

<h2> �л����� </h2>

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
	alert("������ �л��� " + name + " �Դϴ�.");
}

</script>


</html>
