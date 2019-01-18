<%-- 
    Document   : LoadPage
    Created on : Jan 18, 2019, 9:47:22 PM
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
        <%
            String name = request.getParameter("nam");
            String age = request.getParameter("age");
            String salary = request.getParameter("salary");
            Person person = new Person();
            person.setName(name);
            person.setAge(Integer.parseInt(age));
            person.setSalary(Integer.parseInt(salary));
            // application.setAttribute("data", person);
          //  session.setAttribute("data", person);
            request.setAttribute("data", person);
            RequestDispatcher v= request.getRequestDispatcher("showData.jsp");
            v.forward(request, response);
            

        %>
        <a href="showData.jsp"> Show your data</a>
    </body>
</html>
