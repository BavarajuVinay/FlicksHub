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
            left: 33%;
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
            left: 25%;
            position: absolute;
        }
        .lg
        {
            /* background-color: white; */
            height: 80px;
            width: 150px;
            top: 48%;
            left: 43%;
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
            <h1>BOOKINGS</h1>
        </div>
        <%
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
                String sql = "select * from bookings";
        
                Statement st = conn.createStatement();
          
                ResultSet res = st.executeQuery(sql); %>

                <div class="tab">
                <table style="color: white;font-size: x-large; " border="10" width="100%" cellpadding="20" cellspacing="5">
                    <tr>
                        <th>Email</th>
                        <th>Movie</th>
                        <th>Theater</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Seats</th>
                        <th>Amount</th>
                        <th>confirmNum</th>
                    </tr>
                    <% while(res.next()){ %> 
                        <tr>>
                        <th><%=res.getString(1)%></th>
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
       %>
        </table>
        </div>
    </body>
</html>