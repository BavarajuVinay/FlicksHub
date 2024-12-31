<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Booking Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=neon|anaglyph|3d">
        <style>
            .title
            {
                
                color: white;
                top: 0%;
                left: 35%;
                height: 80px;
                width: 500px;
                position: absolute;
                font-size: x-large;
            }
            .selecting
            {
                background-color: rgba(6, 47, 130, 0.848);
                border: 2px solid white;
                border-radius: 8px 8px 8px 8px;
                color: white;
                top: 15%;
                left: 25%;
                height: 850px;
                width: 800px;
                position: absolute;
                opacity: 0.8;
            }
            .cost
            {
                
                color: red;
                position: absolute;
                width: 100%;
                height: 45px;
            }
            .no-of-seats
            {
               
                color: black;
                top: 15%;
                left: 35%;
                height: 50px;
                width: 420px;
                position: absolute;
            }
            .textbox1
            {
                height: 50px;
                width: 200px;
            }
            .start-selecting
            {
                background-color: white;
                color: black;
                border-radius: 8% 8% 8% 8%;
                top: 25%;
                left: 5%;
                height:50px;
                width: 160px;
                position: absolute;
                text-align: center;
            }
            .descrip
            {
               
                columns: black;
                top: 35%;
                width: 100%;
                height: 60px;
                position: absolute;
            }
            .check-yes
            {
                background-color: green;
                top: 30%;
                left: 15%;
                height: 15px;
                width: 15px;
                position: absolute;
            }
            .selected-seat
            {
            
                color: white;
                top: -10%;
                left: 19%;
                position: absolute;
            }
            .check-reserved
            {
                background-color: red;
                top: 30%;
                left: 40%;
                height: 15px;
                width: 15px;
                position: absolute;
            }
            .reserved-seat
            {
                
                color: white;
                top: -10%;
                left: 45%;
                position: absolute;
            }
            .check-empty
            {
                background-color: white;
                top: 30%;
                left: 70%;
                height: 15px;
                width: 15px;
                position: absolute;
            }
            .empty-seat
            {
              
                color: white;
                top: -10%;
                left: 75%;
                position: absolute;
            }
            .book
            {
              
                color: white;
                top: 40%;
                height: 800px;
                width: 100%;
                position: absolute;
            }
            .booking
            {
                
                color: black;
                top: 60px;
                left: 10%;
                height: 540px;
                width: 500px;
                position: absolute;   
            }
            .select
            {
                height: 20px;
                width: 30px;
            }
            .booking table
            {
                color: white;
            }
            .screen
            {
                background-color: white;
                color: black;
                top: 70%;
                left: 0%;
                width: 790px;
                height: 40px;
                position: absolute;
              
            }
            .payment-button
            {
                
                left: 0%;
                top: 80%;
                width: 100%;
                height: 40px;
                position: absolute;
                text-align: center;
            }
            button
            {
                position: absolute;
                background-color: orange;
                border-radius: 8% 8% 8% 8%;
                font-family: Verdana;
                left: 0%;
                height: 40px;
                width: 100%;
                color: white;
                font-size: 140%;
                text-align: center;
            }
            .tab
            {
                color: black;
                border: 2px solid black;
            }
            body
            {
                background-image: url('https://th.bing.com/th/id/R.47e9727671dca244c4f85d1514f95bd2?rik=mx7erd4hoEfA6Q&riu=http%3a%2f%2fs3.amazonaws.com%2fs3.timetoast.com%2fpublic%2fuploads%2fphotos%2f1710418%2fmovie_theatre.jpg%3f1473730546&ehk=Dq30S8eY%2brOrO%2brLZmx28biS5u6%2bxwObvyXx25XDIK8%3d&risl=&pid=ImgRaw&r=0');
                background-size: cover;
            }
            input[type="checkbox"]:checked{
                background-color: green;
            }
            input[type="checkbox"] {
            cursor: pointer;
            appearance: none;
            outline: 0;
            background: lightgray;
            height: 16px;
            width: 16px;
            border: 1px solid white;
            color: white;
            }
        </style>
        <script>
    function seatChecker(){
        const rows = ["E","D","C","B","A"];
        var checkedSeats = [];
        for(var i=0;i < 5 ;i++){
            for(var j=1;j<=12;j++){
                var temp = rows[i]+j;
                if(document.getElementById(rows[i]+j).checked){
                    checkedSeats.push(rows[i]+j);
                }
            }
        }
        var amount = 0;

            for(var i=0;i<checkedSeats.length;i++){
                if(checkedSeats[i][0] == "A" || checkedSeats[i][0] == "B")
                    amount += 100;
                else    
                    amount += 150;
            }
        if(checkedSeats.length<=5){
            // window.alert(amount);
        var seats = checkedSeats.toString();
        let totamount = amount.toString();
        // console.log(seats);
        // console.log(totamount);
        var url = window.location.href;
        var ind =  url.search(/mv/i);
        var substr = url.substring(ind,url.length);
        window.location.href = "http://localhost:8081/csm/pay.jsp?seats="+seats+"&amount="+totamount+"&"+substr;
        }
        else{
            alert("You can select maximum of 5 seats only");
        }
    }
    </script>
    </head>
    <body >
        <div class="title">
            <h1 class="font-effect-anaglyph">Please Select your Seats</h1>
        </div>
        <div class="selecting">
            <h2 align="center">Please select maximum of 5 seats only</h2>
            <div class="cost">
                <h2 align="center">Normal seat cost :- 100Rs/-</h2>
                <h2 align="center">Executive seat cost :- 150Rs/-</h2>
            </div>
            
            <div class="start-selecting">
                <h2>Start Selecting</h2>
            </div>
            <div class="descrip">
                <table border="0" width="100%" class="tab">
                    <tr>
                        <div class="check-yes"></div>
                        <div class="selected-seat">
                            <h2>Selected Seat</h2>
                        </div>
                    </tr>
                    <tr>
                        <div class="check-reserved"></div>
                        <div class="reserved-seat">
                            <h2>Reserved Seat</h2>
                        </div>
                    </tr>
                    <tr>
                        <div class="check-empty"></div>
                        <div class="empty-seat">
                            <h2>Empty Seat</h2>
                        </div>
                    </tr>
                </table>
            </div>
            <div class="book">
                <h1 align="center">Please select your seats now</h1>
                <div class="booking">
                    <table cellpadding="10" border="1" class="tab">
                        <tr align="center">
                            <td></td>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                            <td>5</td>
                            <td></td>
                            <td>6</td>
                            <td>7</td>
                            <td>8</td>
                            <td>9</td>
                            <td>10</td>
                            <td>11</td>
                            <td>12</td>
                        </tr>
                        <tr><th colspan="14" class="font-effect-anaglyph" style="color: white;">Executive</th></tr>
                        <tr>
                            <td><h3>E</h3></td>
                            <td><input type="checkbox" class="select" id="E1" value="E2"></td>
                            <td><input type="checkbox" class="select" id="E2" value="E1"></td>
                            <td><input type="checkbox" class="select" id="E3" value="E3"></td>
                            <td><input type="checkbox" class="select" id="E4" value="E4"></td>
                            <td><input type="checkbox" class="select" id="E5" value="E5"></td>
                            <td></td>
                            <td><input type="checkbox" class="select" id="E6" value="E6"></td>
                            <td><input type="checkbox" class="select" id="E7" value="E7"></td>
                            <td><input type="checkbox" class="select" id="E8" value="E8"></td>
                            <td><input type="checkbox" class="select" id="E9" value="E9"></td>
                            <td><input type="checkbox" class="select" id="E10" value="E10"></td>
                            <td><input type="checkbox" class="select" id="E11" value="E11"></td>
                            <td><input type="checkbox" class="select" id="E12" value="E12"></td>
                            
                        </tr>
                        <tr>
                            <td><h3>D</h3></td>
                            <td><input type="checkbox" class="select" id="D1"  value="D1"></td>
                            <td><input type="checkbox" class="select" id="D2"  value="D2"></td>
                            <td><input type="checkbox" class="select" id="D3"  value="D3"></td>
                            <td><input type="checkbox" class="select" id="D4"  value="D4"></td>
                            <td><input type="checkbox" class="select" id="D5"  value="D5"></td>
                            <td></td>
                            <td><input type="checkbox" class="select" id="D6"  value="D6"></td>
                            <td><input type="checkbox" class="select" id="D7"  value="D7"></td>
                            <td><input type="checkbox" class="select" id="D8"  value="D8"></td>
                            <td><input type="checkbox" class="select" id="D9"  value="D9"></td>
                            <td><input type="checkbox" class="select" id="D10" value="D10"></td>
                            <td><input type="checkbox" class="select" id="D11" value="D11"></td>
                            <td><input type="checkbox" class="select" id="D12" value="D12"></td>
                        </tr>
                        <tr>
                            <td><h3>C</h3></td>
                            <td><input type="checkbox" class="select" id="C1"  value="C1"></td>
                            <td><input type="checkbox" class="select" id="C2"  value="C2"></td>
                            <td><input type="checkbox" class="select" id="C3"  value="C3"></td>
                            <td><input type="checkbox" class="select" id="C4"  value="C4"></td>
                            <td><input type="checkbox" class="select" id="C5"  value="C5"></td>
                            <td></td>
                            <td><input type="checkbox" class="select" id="C6"  value="C6"></td>
                            <td><input type="checkbox" class="select" id="C7"  value="C7"></td>
                            <td><input type="checkbox" class="select" id="C8"  value="C8"></td>
                            <td><input type="checkbox" class="select" id="C9"  value="C9"></td>
                            <td><input type="checkbox" class="select" id="C10" value="C10"></td>
                            <td><input type="checkbox" class="select" id="C11" value="C11"></td>
                            <td><input type="checkbox" class="select" id="C12" value="C12"></td>
                        </tr>
                        <tr>
                            <th colspan="14" class="font-effect-anaglyph" style="color: white;">Normal</th>
                        </tr>
                        <tr>
                            <td><h3>B</h3></td>
                            <td><input type="checkbox" class="select" id="B1"  value="B1"></td>
                            <td><input type="checkbox" class="select" id="B2"  value="B2"></td>
                            <td><input type="checkbox" class="select" id="B3"  value="B3"></td>
                            <td><input type="checkbox" class="select" id="B4"  value="B4"></td>
                            <td><input type="checkbox" class="select" id="B5"  value="B5"></td>
                            <td></td>
                            <td><input type="checkbox" class="select" id="B6"  value="B6"></td>
                            <td><input type="checkbox" class="select" id="B7"  value="B7"></td>
                            <td><input type="checkbox" class="select" id="B8"  value="B8"></td>
                            <td><input type="checkbox" class="select" id="B9"  value="B9"></td>
                            <td><input type="checkbox" class="select" id="B10" value="B10"></td>
                            <td><input type="checkbox" class="select" id="B11" value="B11"></td>
                            <td><input type="checkbox" class="select" id="B12" value="B12"></td>
                        </tr>
                        <tr>
                            <td><h3>A</h3></td>
                            <td><input type="checkbox" class="select" id="A1"  value="A1"></td>
                            <td><input type="checkbox" class="select" id="A2"  value="A2"></td>
                            <td><input type="checkbox" class="select" id="A3"  value="A3"></td>
                            <td><input type="checkbox" class="select" id="A4"  value="A4"></td>
                            <td><input type="checkbox" class="select" id="A5"  value="A5"></td>
                            <td></td>
                            <td><input type="checkbox" class="select" id="A6"  value="A6"></td>
                            <td><input type="checkbox" class="select" id="A7"  value="A7"></td>
                            <td><input type="checkbox" class="select" id="A8"  value="A8"></td>
                            <td><input type="checkbox" class="select" id="A9"  value="A9"></td>
                            <td><input type="checkbox" class="select" id="A10" value="A10"></td>
                            <td><input type="checkbox" class="select" id="A11" value="A11"></td>
                            <td><input type="checkbox" class="select" id="A12" value="A12"></td>
                        </tr>
                    </table>
                </div>
                <div class="screen">
                    <h3 align="center">Screen</h3>
                </div>
                <div class="payment-button">
                    <button onclick="seatChecker()" style="text-align: center;">Proceed to pay</button>
                </div>
            </div>
        </div>
    </body>
    <%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>
  <%@ page import="java.util.*" %>
  <%
    String movie = request.getParameter("mv");
    String theater = request.getParameter("theater");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
        String sql = "select * from bookings where movie=? and theater=? and dat=? and time=?";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,movie);
        pstmt.setString(2,theater);
        pstmt.setString(3,date);
        pstmt.setString(4,time);

        ResultSet res = pstmt.executeQuery();
        Vector v = new Vector();
        while(res.next()){ 
            String[] temp = res.getString(6).split(",");
            for(int i=0;i<temp.length;i++){
                v.add(temp[i]);
            }
            for(int i=0;i<v.size();i++){
                
            %>
            <script>
            var ele = document.getElementById("<%=v.get(i)%>");
            ele.style.backgroundColor = "red";
            ele.style.cursor = "not-allowed";
            
            </script>
        <%
            }
        } 
    }
    catch(Exception e){ 
        
     out.println(e);
    }
%> 
</html>
