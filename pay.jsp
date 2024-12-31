<!DOCTYPE html>
<html>
<head>
  <title>Movie Ticket Booking - Payment</title>
  <style>

    /* This is a payment page css code */

    body {
      font-family: Arial, sans-serif;
      /* background-color:black; */
      background-image: url('https://wallpapercave.com/wp/wp7765693.jpg');
      background-size: cover;
      background-repeat: no-repeat;
    }
    .container {
      /* max-width: 400px; */
      /* margin: 0 auto; */
      top: 6%;
      left: 60%;
      width: 550px;
      height: 720px;
      padding: 22px;
      background-color: #fff;
      /* background-color: blue; */
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      position: absolute;
    }

    h2 {
      text-align: center;
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="number"],
    select {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    .card-group {
      display: flex;
      justify-content: space-between;
    }

    .card-group input[type="radio"] {
      margin-right: 5px;
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

    /* .btn:hover {
      background-color: #45a049;
    } */
    button
    {
        height: 40px;
        width: 100%;
        background-color: gold;
        left: 0%;
    }
    button:hover{
        background-color: transparent;
    }

    /* Payment page css code ends  */

    /* This is a ticket page css code */


    .container1 {
      /* max-width: 400px; */
      top: 25%;
      left: 35%;
      width: 480px;
      height: 440px;
      /* margin: 0 auto; */
      padding: 20px;
      background-color: #fff;
      /* background-color: blue; */
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      position: absolute;
    }

    /* .ticket {
      border: 1px solid #ccc;
      border-radius: 5px;
      height: 240px;
      padding: 20px;
      margin: 10px;
      margin-bottom: 20px;
      background-color: #f9f9f9;
      background-color: green; 
    }

    .ticket h3 {
      margin-top: 0;
    }

    .ticket p {
      margin-bottom: 10px;
    }

    .ticket p:last-child {
      margin-bottom: 0;
    } */

    .button-container {
      text-align: center;
    }

    .btn1{
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn1:hover {
      background-color: #45a049;
    }      
    

    /* Ticket page css code ends  */

  </style>
  <script>
    fun();
    function fun(){
      var url = window.location.href;
      var ind =  url.search(/amount/i);
      var end = url.search(/&mv/i);
      amount = url.substring(ind+7,end);

    }
    function validation(){
        var url = window.location.href;
        var ind =  url.search(/se/i);
        var substr = url.substring(ind,url.length);
        var rand = Math.floor(Math.random()*9000)+1000;
        var connum = "ABC"+rand;
        console.log(connum);
        
        var trans_id = Math.floor(Math.random()*1000000000);
      var n = new Date();
      var arr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
       m = n.getMonth();
       d = n.getDate();
       y = n.getFullYear();
      var da = parseInt(d,10);
      var DATE = arr[m]+da+" "+y;
      var TIME = n.getHours()+":"+n.getMinutes();
      if(n.getHours()>=12){
         TIME = TIME+" PM";
      }
      else{
        TIME = TIME+" AM";
      }
      console.log(trans_id);
      console.log(DATE);
      console.log(TIME);

        window.location.href = "http://localhost:8081/csm/ticket.jsp"+"?"+substr+"&confirmnum="+connum+"&trans_id="+trans_id+"&DATE="+DATE+"&TIME="+TIME;
    }
    </script>
</head>
<body>
  <div id="pay">
  <div class="container">
    <h2>Payment</h2>
    <form>
      <div class="form-group">
        <label for="Payment-Methods">Payment Methods</label>
         <img src="https://studanswers.com/assets/we-accept.png" alt="" height="40px" width="390px">
      </div>
      <div class="form-group">
        <label for="cardholder-name">Cardholder Name</label>
        <input type="text" id="cardholder-name" name="cardholder-name" placeholder="xxxxx" required>
      </div>
      <div class="form-group">
        <label for="card-number">Card Number</label>
        <input type="text" id="card-number" name="card-number" placeholder="XXXX-XXXX-XXXX-XXXX" maxlength="19" required>
      </div>
      <div class="form-group">
        <label for="expiry-date">Expiry Date</label>
        <input type="text" id="expiry-date" name="expiry-date" placeholder="MM/YY" maxlength="5" required>
      </div>
      <div class="form-group">
        <label for="cvv">CVV</label>
        <input type="number" id="cvv" name="cvv" placeholder="XXX" min="100" max="999" maxlength="3" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <!-- <input type="email" id="email" name="email" placeholder="someone@gmail.com"> -->
        <input type="email" readonly <%
                        String mail = (String)session.getAttribute("email");
                        if (mail!=null) { %>
                            value=<%=mail%>
                            <%
                        }
                        else { %>
                            value = " "
                            <%
                        }
                         %> placeholder="Email">
      </div>
      <div class="form-group">
        <label for="phone">Phone</label>
        <input type="tel" id="phone" name="phone" placeholder="xxxxxxxxxx">
      </div>
      <!-- <div class="form-group">
        <label>Payment Method</label>
        <div class="card-group">
          <label>
            <input type="radio" name="payment-method" value="visa" required> Visa
          </label>
          <label>
            <input type="radio" name="payment-method" value="mastercard" required> MasterCard
          </label>
        </div>
         <a href="#" onclick="return show('ticket','container');"><button>Are you a Admin?</button></a>
      </div> -->
      <div class="form-group">
        <label for="phone">Total Amount: 
          <script type="text/javascript">
            document.writeln(" "+amount+".00 ");
          </script>
        </label>
        <button onclick="validation();">Confirm Payment</button>
      </div>
    </form>
  </div>
</div>
  <!-- <div id="ticket" style="display: none;">
    <div class="container1">
        <h2>Ticket Confirmation</h2>
        <div class="ticket">
          <h3>Movie Name</h3>
          <p>Date: May 15, 2023</p>
          <p>Showtime: 7:00 PM</p>
          <p>Theater: Theater 1</p>
          <p>Seat: A1</p>
          <p>Confirmation Number: ABC123</p>
        </div>
        <div class="button-container">
          <button class="btn1" onclick="printTicket()">Print Ticket</button>
        </div>
      </div>
    
      <script>
        function printTicket() {
          // Handle printing logic here
          window.print();
        }
      </script>                                        
  </div> -->
</body>
</html>
  
