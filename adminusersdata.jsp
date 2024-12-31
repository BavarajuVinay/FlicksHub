<html>
    <head>
        <style>
            .title 
            {
                /* background-color: white; */
                color: white;
                top: 3%;
                left: 30%;
                height: 170px;
                width: 850px;
                position: absolute;
                font-size: 220%;
            }
            body
            {
                /* background-image: url('https://th.bing.com/th/id/R.47e9727671dca244c4f85d1514f95bd2?rik=mx7erd4hoEfA6Q&riu=http%3a%2f%2fs3.amazonaws.com%2fs3.timetoast.com%2fpublic%2fuploads%2fphotos%2f1710418%2fmovie_theatre.jpg%3f1473730546&ehk=Dq30S8eY%2brOrO%2brLZmx28biS5u6%2bxwObvyXx25XDIK8%3d&risl=&pid=ImgRaw&r=0'); */
                background-color: black;
                background-size: cover;
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
        </style>         
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>

<%
      try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
        String sql = "select * from users";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
%>
<div class="title">
    <h1>USERS LOGIN DATA</h1>
</div>
<div class="tab">
<table style="color: white;font-size: x-large; " border="10" width="100%" cellpadding="20" cellspacing="5">  
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
    </tr>
<%
    while(rs.next()){
%>
    <tr>
        <th><%= rs.getString(1) %></th>
        <th><%= rs.getString(2) %></th>
        <th><%= rs.getString(3) %></th>
    </tr> 
<%       
    }
}
    catch(Exception e){
        %>
        <script>alert('Exception occured')</script>
        <% out.println(e);
   }
%>
</table>
</div>
    </body>
</html>