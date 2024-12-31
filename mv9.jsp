<html>
    <head>
        <title>Fast X</title>
        <style>
            .first
            {
                background-color: black;
                color: white;
                width:1630px;
                height: 680px;
                left: 0%;
                top: 0%;
                position: absolute;
            }
            .image
            {
                width: 250px;
                height: 350px;
                top: 9%;
                left: 15%;
                border-radius: 8% 8% 8% 8%;
                position: absolute;
                /* background-color: yellow; */
            }
            .desc
            {
                left: 33%;
                top: 15%;
                width: 950px;
                height: 200px;
                position: absolute;
                /* background-color: blue; */
            }
            .second 
            {
                top: 700px;
                width: 1260px;
                height: 850px;
                left: 15%;
                /* background-color:green; */
                position: absolute;
            }
            .cast
            {
                top: 23%;
                left: 0%;
                width: 900px;
                height: 170px;
                position: absolute;
                /* background-color:red; */
            }
            .ca1
            {
                top: 0%;
                left: 0%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .ca2
            {
                top: 0%;
                left: 22%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .ca3
            {
                top: 0%;
                left: 42%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .ca4
            {
                top: 0%;
                left: 62%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .ca5
            {
                top: 0%;
                left: 82%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .crew
            {
                top: 47%;
                left: 0%;
                width: 900px;
                height: 250px;
                position: absolute;
                /* background-color:pink; */
            }
            .cr1
            {
                top: 33%;
                left: 0%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .cr2
            {
                top: 33%;
                left: 22%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .cr3
            {
                top: 33%;
                left: 42%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .cr4
            {
                top: 33%;
                left: 62%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            .cr5
            {
                top: 33%;
                left: 82%;
                width: 120px;
                height: 120px;
                border-radius: 50% 50% 50% 50%;
                position: absolute;
                /* background-color: orange; */
            }
            button
            {
                width: 180px;
                height: 50px;
                background-color: red;
                color: white;
                border-radius: 8% 8% 8% 8%;
                font-size: medium;
            }
            button:hover{
                background-color: transparent;
            }
            .show_desc
            {
                /* background-color:green; */
                color: white;
                top: 62%;
                left: 15%;
                height: 120px;
                width: 1100px;
                font-size: medium;
                position: absolute;
                /* border:1px solid white; */
            }
        </style>
        <script>
            var mv = "Fast X";
            var theater = "PVR: Ripples, Vijayawada";
            var clickdate1=false;
            var clickdate2=false;
            var clickdate3=false;
            var date1 = "null";
            var date2 = "null";
            var date3 = "null";
            function show(shown){
                document.getElementById(shown).style.display="block";
            }
            function clickedBtn(id){
                if(id=='date-1'){
                    clickdate1=true;
                    var arr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
                                n = new Date();
                                m = n.getMonth();
                                d = n.getDate();
                                var date = parseInt(d,10);
                                var ans = arr[m]+date;
                    date1=ans;
                }
                if(id=='date-2'){
                    clickdate2=true;
                    var arr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
                                n = new Date(new Date().getTime() + 24 * 60 * 60 * 1000);
                                m = n.getMonth();
                                d = n.getDate();
                                var date = parseInt(d,10);
                                var ans = arr[m]+date;
                    date2=ans;
                }
                if(id=='date-3'){
                    clickdate3=true;
                    var arr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
                                n = new Date(new Date().getTime() + 48 * 60 * 60 * 1000);
                                m = n.getMonth();
                                d = n.getDate();
                                var date = parseInt(d,10);
                                var ans = arr[m]+date;
                    date3=ans;
                }
            }

            function clickedBtndate(time){
                <% String email = (String)session.getAttribute("email");
                if(email!=null){ %>
                if(time=="time-1"){
                    var time = "11:15AM";
                }
                if(time=="time-2"){
                    var time = "4:10PM";
                }
                if(time=="time-3"){
                    var time = "9:30PM";
                }
                if(clickdate1==true){
                    window.location.href = "http://localhost:8081/csm/m1mbook.jsp?mv="+mv+"&theater="+theater+"&date="+date1+"&time="+time;
                }
                if(clickdate2==true){
                    window.location.href = "http://localhost:8081/csm/m1mbook.jsp?mv="+mv+"&theater="+theater+"&date="+date2+"&time="+time;
                }
                if(clickdate3==true){
                    window.location.href = "http://localhost:8081/csm/m1mbook.jsp?mv="+mv+"&theater="+theater+"&date="+date3+"&time="+time;
                }
                <% } 
                else{%>
                    alert("Please login to book movies");
                    window.location.href = "http://localhost:8081/csm/login.html";
                <% } %>
            }
        </script>

<script>
    function fun()
    {
        var t1 = document.getElementById("time-1");
        var t2 = document.getElementById("time-2");
        var t3 = document.getElementById("time-3");
        var n = new Date();
        var hr = n.getHours();
        var min = n.getMinutes();
        if(hr>=11 && min>14){
            t1.style.cursor = "not-allowed";
            t1.disabled  = true;
            console.log("1st");
        }
        if(hr>=16 && min>9){
            t2.style.cursor = "not-allowed";
            t2.disabled  = true;
            console.log("1st");
        }
        if(hr>=21 && min>29){
            t3.style.cursor = "not-allowed";
            t3.disabled  = true;
            console.log("1st");
        }
    }

</script>
    </head>
    <body>
        <div class="first">
            <div class="image">
                <img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/fast-x-et00122562-1679316138.jpg" height="100%" weight="100%" alt="">
            </div>
            <div class="desc">
                <h1>Fast X</h1>
                <h2>&#11088;8.9/10</h2>154.4k votes
                <h3>2D,ICE 3D,MX4D,3D SCREEN X,IMAX 3D,3D,4DX 3D,MX4D 3D,4DX,IMAX 2D</h3> 
                <h3>Telugu, Tamil, Hindi, English</h3>
                <h3>2h 14m </h3>
                <h3>Action,Adventure,Crime,Thriller &#x2022; UA &#x2022; 19 May, 2023</h3> 
                <!-- <a href="m1mbook.html"><button>Book Tickets</button></a> -->
            </div>
            <div class="show_desc">
                <table border="0" cellpadding="15" cellspacing="4">
                    <tr>
                        <h2>&ensp; PVR: Ripples, Vijayawada &ensp;&ensp;<font style="color: red;">&#9888; Non Cancellable</font> </h2>
                    </tr>
                    <tr>
                        <th><button id="date-1" onclick="show('show-2'); clickedBtn(this.id);">
                            <script>
                                var arr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
                                n = new Date();
                                m = n.getMonth();
                                d = n.getDate();
                                var date = parseInt(d,10);
                                document.write(arr[m]+" "+date);
                            </script>
                            </button></th>
                        <th><button id="date-2" onclick="show('show-2'); clickedBtn(this.id);">
                            <script>
                                var arr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
                                n = new Date(new Date().getTime() + 24 * 60 * 60 * 1000);
                                m = n.getMonth()+1;
                                d = n.getDate();
                                var date = parseInt(d,10);
                                document.write(arr[m-1]+" "+date);
                            </script>
                        </button></th>
                        <th><button id="date-3" onclick="show('show-2'); clickedBtn(this.id);">
                            <script>
                                var arr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
                                n = new Date(new Date().getTime() + 48 * 60 * 60 * 1000);
                                m = n.getMonth()+1;
                                d = n.getDate();
                                var date = parseInt(d,10);
                                document.write(arr[m-1]+" "+date);
                            </script>
                        </button></th>
                    </tr>
                </table>
                <div id="show-2" style="display: none;">
                <table border="0" cellpadding="15" cellspacing="4">
                    <tr>
                        <th><button id="time-1" onclick="clickedBtndate(this.id);">11:15 AM</button></th>
                        <th><button id="time-2" onclick="clickedBtndate(this.id);">4:10 PM</button></th>
                        <th><button id="time-3" onclick="clickedBtndate(this.id);">9:30 PM</button></th>
                    </tr>
                </table>
                </div>
            </div>
        </div>
        <div class="second">
           <div class="about">
                <h1>About the Movie</h1>
                <h2>Dom Toretto and his family must confront a terrifying new enemy who`s fueled by revenge.</h2>
                <h1>Cast</h1>
                <div class="cast">
                    <div class="ca1">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/vin-diesel-5007-22-12-2017-10-17-23.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Vin Diesel</h3>
                    </div>
                    <div class="ca2">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/jason-momoa-25617-24-03-2017-17-39-52.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Jason Mamoa</h3>
                    </div>
                    <div class="ca3">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/john-cena-1021-24-03-2017-15-43-30.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;John Cena</h3>
                    </div>
                    <div class="ca4">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/jason-statham-935-24-03-2017-13-50-52.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Jason Statham</h3>
                    </div>
                    <div class="ca5">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/nathalie-emmanuel-1055032-24-03-2017-16-16-15.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>Nathalie Emmanuel</h3>
                    </div>
                </div>
                <div class="crew">
                    <h1>Crew</h1>
                    <div class="cr1">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/justin-lin-1105-24-03-2017-15-20-50.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Justin Lin</h3>
                    </div>
                    <div class="cr2">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/neal-h.-moritz-iein011457-24-03-2017-15-17-53.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>Neal H.Moritz</h3>
                    </div>
                    <div class="cr3">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/gary-scott-thompson-1068971-07-04-2017-11-42-53.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>Gary Scott Thompson</h3>
                    </div>
                    <div class="cr4">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/nicole-perlman-42699-12-10-2018-10-33-23.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;&ensp;&ensp;Nicole Perlman</h3></h3>
                    </div>
                    <div class="cr5">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/stephen-f.-windon-iein073214-07-04-2017-11-42-14.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;&ensp;Stephen F.Windon</h3>
                    </div>
                </div>
           </div>
        </div>
    </body>
</html>
<script>
    fun();
</script>