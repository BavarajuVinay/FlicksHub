<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<%
    String Email = request.getParameter("email");
    String Password = request.getParameter("pass");

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");

        String sql = "select * from users where email=? and pass=?";

        PreparedStatement pstmt = con.prepareStatement(sql);
        
        pstmt.setString(1,Email);
        pstmt.setString(2,Password);        

        ResultSet res = pstmt.executeQuery();

        if(res.next()){
            String Name =res.getString(1);
            session.setAttribute("name",Name);
            session.setAttribute("email",Email);
            response.sendRedirect("header.jsp");

        }
        else{ %>
            <script>alert("Invalid Email or Password");</script>
            <jsp:include page="login.html"/>
        <%
        }

    }
    catch(Exception e){ 
        out.println(e);                        %>
        
        <jsp:include page="login.html"/>
<%
}

%>