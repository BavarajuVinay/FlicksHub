<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String email = (String)session.getAttribute("email");
    if(email == null){%>
        <script> alert("Please login to contact us") </script>
    
        <jsp:include page="login.html"/>
        <%
    }
    else{
        String Name = request.getParameter("name");
        String Mobile = request.getParameter("ph1");
        String Message = request.getParameter("msg1");
        

        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
    
            String sql = "insert into contact values(?,?,?,?)";

            PreparedStatement pstmt = conn.prepareStatement(sql);

            pstmt.setString(1,Name);
            pstmt.setString(2,email);
            pstmt.setString(3,Mobile);
            pstmt.setString(4,Message);

            int result = pstmt.executeUpdate();

            if(result==1){ %>
                <script> alert("We received your feedback.Thank you for contacting Us....") </script>
                <jsp:include page="header.jsp"/>
                <%
                }
                else{ %>
                    <script>alert("Sorry! Some Error occured please try again");</script>
                    <jsp:include page="header.jsp"/>
                <%
                }
            }
            catch(Exception e){ %>
                <script> alert("Some Exception occured please try again"); </script>
                <jsp:include page="header.jsp"/>
            <%
            }
     }
    
    %>