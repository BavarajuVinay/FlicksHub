<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%

    String Name = request.getParameter("n1");
    
    String Email = request.getParameter("e1");
    String Password = request.getParameter("p1");
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
        String sql = "insert into users values(?,?,?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,Name);
        
        pstmt.setString(2,Email);
        pstmt.setString(3,Password);
        

        int result = pstmt.executeUpdate();

        if(result==1){ %>
            <script> window.alert("You are signed up. Now you can login") </script>
            <jsp:include page="login.html"/>
        <%
        }
        else{ %>
            <script>alert("Some error occured. Please try again")</script>
            <jsp:include page="signup.html"/>
        <%
        }
    }
    catch(Exception e){ %>
        
    <%
     out.println(e);
    }
%>