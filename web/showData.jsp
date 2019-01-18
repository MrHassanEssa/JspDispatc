<%-- 
    Document   : showData
    Created on : Jan 18, 2019, 10:03:14 PM
    Author     : m_t_m
--%>

<%@page import="data.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome</h1>
        <%
            Person newPerson = new Person();
            // newPerson=(Person) application.getAttribute("data");
            newPerson = (Person) request.getAttribute("data");


        %> 
        <%=  newPerson.getName()%>
    </body>
</html>
