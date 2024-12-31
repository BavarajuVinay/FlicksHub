<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>
  <%
    String mail = (String)session.getAttribute("email");
    String card_holder_name = request.getParameter("card-holder-name");
    String card_number = request.getParameter("card-number");
    String phone = request.getParameter("phone");
    String amount = request.getParameter("amount");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
        String sql = "insert into payment values(?,?,?,?,?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,mail);
        pstmt.setString(2,card_holder_name);
        pstmt.setString(3,card_number);
        pstmt.setString(4,phone);
        pstmt.setString(5,amount);

        int result = pstmt.executeUpdate();

        if(result==1){ %>

            
        <%
        }
        else{ %>
            <script>alert("Some error occured. Please try again")</script>
            <jsp:include page="header.jsp"/>
        <%
        }
    }
    catch(Exception e){ %>
        
    <%
     out.println(e);
    }
%> 






<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>
  <%
    String mail = (String)session.getAttribute("email");
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
        String sql = "insert into bookings values(?,?,?,?,?,?,?,?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,mail);
        pstmt.setString(2,movie);
        pstmt.setString(3,theater);
        pstmt.setString(4,date);
        pstmt.setString(5,time);
        pstmt.setString(6,seats);
        pstmt.setString(7,amount);
        pstmt.setString(8,connum);

        int result = pstmt.executeUpdate();

        if(result==1){ %>
            <!-- <script> window.alert("Successful"); </script> -->
        <%
        }
        else{ %>
            <script>alert("Some error occured. Please try again")</script>
            <jsp:include page="header.jsp"/>
        <%
        }
    }
    catch(Exception e){ %>
        
    <%
     out.println(e);
    }
%> 



<!-- String movie = request.getParameter("mv");
    String theater = request.getParameter("theater");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String seats = request.getParameter("seats");
    String amount = request.getParameter("amount");
    String connum = request.getParameter("confirmnum"); -->