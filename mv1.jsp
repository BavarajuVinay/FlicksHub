<html>
    <head>
        <title>RRR</title>
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
                top:700px;
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
            var mv = "RRR";
            var theater = "Cinepolis PVP Square Mall,Vijayawada";
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
                    // console.log("1st");
                }
                if(hr>=16 && min>9){
                    t2.style.cursor = "not-allowed";
                    t2.disabled  = true;
                    // console.log("1st");
                }
                if(hr>=21 && min>29){
                    t3.style.cursor = "not-allowed";
                    t3.disabled  = true;
                    // console.log("1st");
                }
            }

        </script>
    </head>
    <body>
        <div class="first">
            <div class="image">
                <img src="https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/rrr-et00094579-12-05-2022-02-26-04.jpg" height="100%" weight="100%" alt="">
            </div>
            <div class="desc">
                <h1>RRR</h1>
                <h2>&#11088;8.5/10</h2>11.9k votes
                <h3>2D</h3>
                <h3>Telugu,Tamil,Malayalam,English</h3>
                <h3>3h 2m </h3>
                <h3>Drama,Historical,Period  &#x2022;  UA  &#x2022;  25 Mar, 2022</h3> 
                <!-- <a href="m1mbook.html"><button>Book Tickets</button></a> -->
            </div>
            <div class="show_desc">
                <table border="0" cellpadding="15" cellspacing="4">
                    <tr>
                        <h2>&ensp; Cinepolis: PVP Square Mall, Vijayawada &ensp;&ensp;<font style="color: red;">&#9888; Non Cancellable</font> </h2>
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
                <h2>RRR is a period drama set in India during the 1920s, revolving around the inspiring journey of two of India`s freedom fighters - Alluri Sitarama Raju and Komaram Bheem.</h2>
                <h1>Cast</h1>
                <div class="cast">
                    <div class="ca1">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/jr-ntr-15411-19-09-2017-01-52-16.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Jr. NTR</h3>
                    </div>
                    <div class="ca2">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/ram-charan-teja-1046368-19-09-2017-02-37-43.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Ram charan</h3>
                    </div>
                    <div class="ca3">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/ajay-devgn-24051-12-09-2017-04-41-13.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Ajay Devgn</h3>
                    </div>
                    <div class="ca4">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/alia-bhatt-21065-13-09-2017-04-53-45.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Alia Bhatt</h3>
                    </div>
                    <div class="ca5">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/samuthirakani-1052542-24-03-2017-17-46-22.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>Samuthirakani</h3>
                    </div>
                </div>
                <div class="crew">
                    <h1>Crew</h1>
                    <div class="cr1">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/s-s-rajamouli-29189-07-10-2020-04-30-40.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;S.S.Rajamouli</h3>
                    </div>
                    <div class="cr2">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/d-v-v-danayya-iein008889-24-03-2017-14-03-39.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>D V V Danayya</h3>
                    </div>
                    <div class="cr3">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/m-m-keeravani-1057248-21-02-2018-11-05-59.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>M.M.Keeravani</h3>
                    </div>
                    <div class="cr4">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/senthil-kumar-iein005633-24-03-2017-13-04-32.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;&ensp;&ensp;Senthil</h3></h3>
                    </div>
                    <div class="cr5">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/a.-sreekar-prasad-iein008770-24-03-2017-14-02-53.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;&ensp;A Sreekar</h3>
                    </div>
                </div>
           </div>
        </div>
    </body>
</html>


<script>
    fun();
</script>

