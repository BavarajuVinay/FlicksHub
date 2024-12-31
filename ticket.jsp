<%

    String movie = request.getParameter("mv");
    String theater = request.getParameter("theater");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String seats = request.getParameter("seats");
    String amount = request.getParameter("amount");
    String connum = request.getParameter("confirmnum");
    
  %>



<!DOCTYPE html>
<html>
<head>
  <title>Movie Ticket Booking - Ticket Confirmation</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
    }

    .container {
      /* max-width: 400px; */
      top: 20%;
      left: 35%;
      width: 480px;
      height: 450px;
      /* margin: 0 auto; */
      padding: 20px;
      background-color: #fff;
      /* background-color: blue; */
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      position: absolute;
    }

    h2 {
      text-align: center;
    }

    .ticket {
      border: 1px solid #ccc;
      border-radius: 5px;
      height: 290px;
      padding: 20px;
      /* margin: 10px; */
      margin-bottom: 20px;
      background-color: #f9f9f9;
      /* background-color: green; */
    }

    .ticket h3 {
      margin-top: 0;
    }

    .ticket p {
      margin-bottom: 10px;
    }

    .ticket p:last-child {
      margin-bottom: 0;
    }

    .button-container {
      text-align: center;
    }

    .btn {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn:hover {
      background-color: #45a049;
    }
    body{
      background-image: url('https://i.pinimg.com/originals/53/85/a8/5385a82e29a80d7a267646563ef96635.jpg');
      background-repeat: no-repeat;
      background-size: cover;
    }
  </style>
  <script>
    fun();
    function fun(){
      var url = window.location.href;
      // console.log(TIME); 
    }
    
    function printTicket() {
      // Handle printing logic here
      window.print();
    }
  </script>
</head>
<body>
  <div class="container">
    <h2>Ticket Confirmation</h2>
    <div class="ticket">
      <h3>Movie Name : <%= movie %>
        <!-- <script type="text/javascript">
          document.write(" "+movie);
        </script>   -->
      </h3>
      <p id="date"><b> Date : <%= date %></b>
        <!-- <script type="text/javascript">
          document.write(" "+date);
        </script> -->
      </p>
      <p id="time"><b> Showtime : <%= time %></b>
        <!-- <script type="text/javascript">
          document.write(" "+time);
        </script> -->
      </p>
      <p id="theater"><b> Theater : <%= theater %></b>
        <!-- <script type="text/javascript">
          document.write(" "+theater);
        </script> -->
      </p>
      <p id="seats"><b> Seats : <%= seats %></b>
        <!-- <script type="text/javascript">
          document.write(" "+seats);
        </script> -->
      </p>
      <p id="amount"><b> Amount Paid : <%= amount %>.00</b>
        <!-- <script type="text/javascript">
          document.write(" "+amount+".00");
        </script> -->
      </p>
      <p id="confirm"><b> Confirmation Number : <%= connum %></b>
        <!-- <script type="text/javascript">
          document.write(" "+connum);
        </script> -->
      </p>
      <p id="payment_status"><b> Payment Status : </b>
        <b> Successfull </b>
      </p>
    </div>
    <div class="button-container">
      <button class="btn" onclick="printTicket()">Print Ticket</button>
    </div>
  </div> 
  <%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>
  <%
    String mail = (String)session.getAttribute("email");
    String Trans_num = request.getParameter("trans_id");
    String DATE = request.getParameter("DATE");
    String TIME = request.getParameter("TIME");
    String AMOUNT = request.getParameter("amount");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vinay","vinay");
        String sql = "insert into payment values(?,?,?,?,?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,mail);
        pstmt.setString(2,Trans_num);
        pstmt.setString(3,DATE);
        pstmt.setString(4,TIME);
        pstmt.setString(5,AMOUNT);

        int result = pstmt.executeUpdate();

        if(result==1){ %>
                <!-- <script>alert('Payment successfull 1');</script>     -->
                <%try{
                    String sq = "insert into bookings values(?,?,?,?,?,?,?,?)";

                    PreparedStatement pst = conn.prepareStatement(sq);

                    pst.setString(1,mail);
                    pst.setString(2,movie);
                    pst.setString(3,theater);
                    pst.setString(4,date);
                    pst.setString(5,time);
                    pst.setString(6,seats);
                    pst.setString(7,amount);
                    pst.setString(8,connum);

                    int res = pst.executeUpdate();

                    if(res==1){ %>
                        <script> window.alert("Payment Successfull"); </script>
                    <%
                    }
                    else{ %>
                        <script>alert("Some error occured. Please try again")</script>
                        <jsp:include page="header.jsp"/>
                    <%
                    }
                }
                catch(Exception e){
                    
                out.println(e);
                }
        }
        else{ %>
            <script>alert("Some error occured. Please try again")</script>
            <jsp:include page="header.jsp"/>
        <%
        }
    }
    catch(Exception e){
     out.println(e);
    }
%> 

</body>
</html>
