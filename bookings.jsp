<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Bookings</title>
    </head>
    <style>
        .title 
        {
            /* background-color: white; */
            color: white;
            top: 3%;
            left: 31%;
            height: 170px;
            width: 850px;
            position: absolute;
            font-size: 320%;
        }
        .bkp
        {
            background-color: white;
            color: black;
            border-radius: 8px 8px 8px 8px;
            height: 200px;
            width: 780px;
            top: 35%;
            left: 29%;
            position: absolute;
        }
        .lg
        {
            /* background-color: white; */
            height: 80px;
            width: 150px;
            top: 48%;
            left: 47%;
            position: absolute;
        }
        .tab{
                top: 25%;
                left: 10%;
                height: 80%;
                width: 80%;
                border-radius: 10px;
                position: absolute;
                
                /* background-color:white; */
                /* text-decoration-color: aliceblue;    */
            }
        body
        {
            background-image: url('https://th.bing.com/th/id/R.47e9727671dca244c4f85d1514f95bd2?rik=mx7erd4hoEfA6Q&riu=http%3a%2f%2fs3.amazonaws.com%2fs3.timetoast.com%2fpublic%2fuploads%2fphotos%2f1710418%2fmovie_theatre.jpg%3f1473730546&ehk=Dq30S8eY%2brOrO%2brLZmx28biS5u6%2bxwObvyXx25XDIK8%3d&risl=&pid=ImgRaw&r=0');
            background-size: cover;
        }
    </style>
    <body>
        <div class="title">
            <h1>MY BOOKINGS</h1>
        </div>
        <%
        String mail = (String)session.getAttribute("email");
        if(mail == null){%>
            <div class="bkp">
                <h1 align="center">Oops! You have not done any bookings yet.</h1>
                <h2 align="center">To see your past bookings please Login</h2>
            </div>
            <div class="lg">
                <a href="login.html"><img src="https://th.bing.com/th/id/R.3b66bdf4f0cb048317fd9c6af11ec285?rik=KOX0uEQgAqrTuA&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fm%2fm%2fx%2fr%2fJ%2f6%2flogin-button-png-hi.png&ehk=9YrAox2MHfbmPuHTJyqUlcyTNAulz6kYT0nmn43bkbo%3d&risl=&pid=ImgRaw&r=0" height="50px" width="170px" alt=""></a>
            </div>
        <%}
        else{
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
                String sql = "select * from bookings where email=?";
        
                PreparedStatement pstmt = conn.prepareStatement(sql);
        
                pstmt.setString(1,mail);              
        
                ResultSet res = pstmt.executeQuery(); %>
                <div class="tab">
                <table style="color: white;font-size: x-large; " border="10" width="100%" cellpadding="20" cellspacing="5">
                    <tr>
                        <th>Movie</th>
                        <th>Theater</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Seats</th>
                        <th>Amount</th>
                        <th>confirmNum</th>
                    </tr>
                    <% while(res.next()){ %> 
                        <tr>
                        <th><%=res.getString(2)%></th>
                        <th><%=res.getString(3)%></th>
                        <th><%=res.getString(4)%></th>
                        <th><%=res.getString(5)%></th>
                        <th><%=res.getString(6)%></th>
                        <th><%=res.getString(7)%></th>
                        <th><%=res.getString(8)%></th>
                    </tr>
                   <% } 
            }
            catch(Exception e){ 
                
             out.println(e);
            }
      } %>
        </table>
        </div>
    </body>
</html>