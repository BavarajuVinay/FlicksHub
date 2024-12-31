<html>
    <head>
        <title>Header</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=neon|anaglyph">
        <style>
            button {
                display: inline-block;
                padding: 15px 25px;
                font-size: 18px;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: #fff;
                background-color:rgb(9, 42, 233);
                border: none;
                border-radius: 15px;
                box-shadow: 0 9px rgb(24, 22, 22);
            }
            button:hover 
            {
                background-color: #ee210e
            }
            button:active {
                background-color: #e93d0d;
                box-shadow: 0 5px rgb(14, 11, 11);
                transform: translateY(4px);
            }
            .size{
                font-size: 40px;
            }
            .recom{
                background-size:contain;
                background-color:black;
                color: white;
                width: 350px;
                height: 50px;
                border-radius: 4% 4% 4% 4%;
                padding: 25px;
                margin: 10px;
                position: absolute;
                top: 23%;
                left: 3%;
                font-size:large;
            }
            .movies
            {
                background-size:contain;
                background-color:black;
                width: 250px;
                height: 350px;
                border-radius: 4% 4% 4% 4%;
                padding: 25px;
                margin: 10px;
                position: absolute;
            }
            .m1{
                top: 36%;
                left:3%;
            }
            .m2{
                top: 36%;
                left: 21%;
            }
            .m3{
                top: 36%;
                left: 39%;
            }
            .m4{
                top: 36%;
                left: 57%;
            }
            .m5{
                top: 36%;
                left:75%;
            } 
            .m6
            {
                top: 90%;
                left: 3%;
            }
            .m7
            {
                top: 90%;
                left: 21%;
            }
            .m8 
            {
                top: 90%;
                left: 39%;
            }
            .m9
            {
                top: 90%;
                left: 57%;
            }
            .m10
            {
                top: 90%;
                left: 75%;
            }
            /* .m1 .btn
            {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                background-color:;
                color: white;
                font-size: 16px;
                padding: 12px 24px;
                border: none;
                cursor: pointer;
                border-radius: 5px;
                text-align: center;
            } */
            body{
                /* background-image: url('https://th.bing.com/th/id/OIP.7KAEVm2VDi67n7KGC_BlpwHaFL?w=266&h=186&c=7&r=0&o=5&dpr=1.7&pid=1.7');
                background-size: cover;
                background-repeat: no-repeat; */
                background-color: black;
                color: white;
            }
            /* title
            {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 50%;
            } */
            .t1
            {
                vertical-align: top;
            }
            .movies:hover 
            {
                transform: scale(1.1);
                /* width: 300px; */
                /* height: 570px; */
            }
            /* * {
                box-sizing: border-box;
            }
            .topnav
            {
                position: absolute;
                background-color: red;
                top: 7%;
                left: 80%;
                height:160px;
                width: 250px;
            }
            /* styling search bar */
    /* .search input[type=text]{
        width:300px;
        height:40px;
        border-radius:25px;
        border: none;
    }
         
    .search{
        float:right;
        margin:7px;
        top: 0%;
        left: 0px;
        background-color: red;
        height: 130px;
        width: 400px;
    }
         
    .search button{
        background-color: #0074D9;
        color: #f2f2f2;
        float: right;
        padding: 5px 10px;
        margin-right: 16px;
        font-size: 12px;
        border: none;
        cursor: pointer;
    } */ 
        </style>
    </head>
    <body>
        .<img align="left" src="https://as2.ftcdn.net/jpg/02/17/67/47/500_F_217674725_IVo7XpjHBt8HWYYAZDFz2umkYKtrT0Lc.jpg" height="170" width="160">
        <!-- <img class="title" style="align-items: center;" src="C:\Users\B V N DURGA VINAY\OneDrive\Documents\fsd final project front end\movie munch.jpg" height="140px" width="550px" alt=""> -->
        <h1 class="font-effect-anaglyph" style="font-family: Verdana, Geneva, Tahoma, sans-serif;text-align: center; font-size:xxx-large;">Movie&ensp;Munch</h1>
        <!-- <div class="search">
            <form action="#">
                <input type="text"
                    placeholder=" Search Movies"
                    name="search">
                   <button>
                    <i class="fa fa-search"
                        style="font-size: 18px;">
                    </i>
                </button> 
                <div class="search-button">
                    <a href="#"><img src="https://th.bing.com/th/id/OIP.u3wmwqe0vx6tHhATZzkGrAHaHa?pid=ImgDet&w=900&h=900&rs=1" height="40px" width="25px" alt="">
                </div>
            </form>
        </div>  -->
        <table class="t1" border="0" align="center" cellspacing="3" cellpadding="20">
            <tr>
                <th><a  href="header.jsp" ><button class="button">Home</button></a></th>
                <th><a  href="bookings.jsp" ><button class="button">Bookings</button></a></th>
                <th><a  href="contact.jsp" ><button class="button">Contact us</button></a></th>
                <th><a  href="about.html" ><button class="button">About us</button></a></th>
                <!-- <th><a  href="login.html"><button class="button">Login</button></a></th>
                <th><a  href="adminlogin.html"><button class="button">AdminLogin</button></a></th> -->
                <% 
                    String email = (String)session.getAttribute("email");
                    String Name = (String)session.getAttribute("name");
                    if(email != null){ 
                %>

                    <th><a href="#" class="action_btn button"><button><%= Name%></button></a></th>
                    <th><a href="userlogout.jsp" class="action_btn button"><button>logout</button></a></th>
                    
                <%
                    }
                    else{%>
                        <th><a href="login.html"><button class="button">Login</button></a></th>
                        <th><a href="adminlogin.html"><button class="button">AdminLogin</button></a></th>
                
                <%
                }
                %>
            </tr>
        </table>
        <div class="recom font-effect-anaglyph">
            <h1><b>Recommended Movies</b></h1>
        </div>
        <table>
            <div>
                <tr>
                    <div class="movies m1"><a href="mv1.jsp"><img src="https://stat4.bollywoodhungama.in/wp-content/uploads/2019/03/RRR-2022-306x393.jpeg" height="100%" width="100%" alt="Sorry1"></a>
                    <h2>RRR</h2><h3>Action/Drama/Historical</h3></div>
                </tr>
                <tr>
                    <div class="movies m2"><a href="mv2.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/virupaksha-et00346626-1681729599.jpg" height="100%" width="100%" alt="Sorry2"></a>
                    <h2>Virupaksha</h2><h3>Mystery/Thriller</h3></div>
                </tr>
                <tr>
                    <div class="movies m3"><a href="mv3.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/agent-et00310078-1681110124.jpg" height="100%" width="100%" alt="Sorry3"></a>
                    <h2>Agent</h2><h3>Action/Thriller</h3></div>
                </tr>
                <tr>
                    <div class="movies m4"><a href="mv4.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/evil-dead-rise-et00349309-1681275399.jpg" height="100%" width="100%" alt="Sorry4"></a>
                    <h2>Evil Dead Rise</h2><h3>Horror</h3></div>
                </tr>
                <tr>
                    <div class="movies m5"><a href="mv5.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/dasara-et00316318-1679638362.jpg" height="100%" width="100%" alt="Sorry5"></a>
                    <h2>Dasara</h2><h3>Action/Adventure/Drama</h3></div>
                </tr>
                <tr>
                    <div class="movies m6"><a href="mv6.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/ponniyin-selvan--part-2-et00348725-1680776467.jpg" height="100%" width="100%" alt="Sorry6"></a>
                    <h2>Ponniyin-Selvan-Part-2</h2><h3>Action/Adventure <br> /Drama/Historical</h3></div>
                </tr>
                <tr>
                    <div class="movies m7"><a href="mv7.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/custody-et00354148-1677833307.jpg" height="100%" width="100%" alt="Sorry7"></a>
                    <h2>Custody</h2><h3>Action/Thriller</h3></div>
                </tr>
                <tr>
                    <div class="movies m8"><a href="mv8.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/pizza-3-the-mummy-et00355692-1679648865.jpg" height="100%" width="100%" alt="Sorry8"></a>
                    <h2>Pizza 3 The Mummy</h2><h3>Drama</h3></div>
                </tr>
                <tr>
                    <div class="movies m9"><a href="mv9.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/fast-x-et00122562-1679316138.jpg" height="100%" width="100%" alt="Sorry9"></a>
                    <h2>Fast X</h2><h3>Action/Adventure/Crime/Thriller</h3></div>
                </tr>
                <tr>
                    <div class="movies m10"><a href="mv10.jsp"><img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/bichagadu-2-et00353721-1677564499.jpg" height="100%" width="100%" alt="Sorry10"></a>
                    <h2>Bichagadu 2</h2><h3>Action/Thriller</h3></div>
                </tr>
            </div>
        </table>
    </body>

</html>



