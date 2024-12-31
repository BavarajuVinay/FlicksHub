<%@ page import="java.io.*" %>

<%
    String Email = request.getParameter("e1");
    String Password = request.getParameter("p1");

    if(Email.equals("bavarajuvinay@gmail.com") && Password.equals("43517")){
%>
        <script>alert("Welcome admin")</script>
        <%
        response.sendRedirect("adminmain.html");
        %>
<%        
    }
    else{
%>
        <script>alert("Invalid Username or Password. Please try again")</script>
        <jsp:include page="adminlogin.html"/>
<%

}
%>