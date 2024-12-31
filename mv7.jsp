<html>
    <head>
        <title>Custody</title>
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
            var mv = "Custody";
            var theater = "Sairam Screens A/C Dolby 7.1 Surround: Vijayawada";
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
                <img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/custody-et00354148-1677833307.jpg" height="100%" weight="100%" alt="">
            </div>
            <div class="desc">
                <h1>Custody</h1>
                <h2>&#11088;8.1/10</h2>43.9k votes
                <h3>2D</h3> 
                <h3>Telugu,Tamil</h3>
                <h3>2h 35m </h3>
                <h3>Action,Thriller &#x2022; UA &#x2022; 12 May, 2023</h3> 
                <!-- <a href="m1mbook.html"><button>Book Tickets</button></a> -->
            </div>
            <div class="show_desc">
                <table border="0" cellpadding="15" cellspacing="4">
                    <tr>
                        <h2>&ensp; Sairam Screens A/C Dolby 7.1 Surround: Vijayawada &ensp;&ensp;<font style="color: red;">&#9888; Non Cancellable</font> </h2>
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
                <h2>Custody is a bilingual movie starring Naga Chaitanya Akkineni and Krithi Shetty in the lead.</h2>
                <h1>Cast</h1>
                <div class="cast">
                    <div class="ca1">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/naga-chaitanya-akkineni-13567-1655789028.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Naga Chaitanya Akkineni</h3>
                    </div>
                    <div class="ca2">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/krithi-shetty-2014897-1663066716.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Krithi Shetty</h3>
                    </div>
                    <div class="ca3">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/arvind-swamy-34572-17-12-2018-02-54-45.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Arvind Swamy</h3>
                    </div>
                    <div class="ca4">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/priyamani-1738-1654347025.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;  Priyamani</h3>
                    </div>
                    <div class="ca5">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/vennela-kishore-16481-1659598641.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>Vennela Kishore</h3>
                    </div>
                </div>
                <div class="crew">
                    <h1>Crew</h1>
                    <div class="cr1">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/venkat-prabhu-2446-11-04-2018-01-00-16.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;Venkat Prabhu</h3>
                    </div>
                    <div class="cr2">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/srinivasaa-chitturi-1095379-26-03-2021-09-33-42.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>Srinivasa Chitturi</h3>
                    </div>
                    <div class="cr3">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/ilaiyaraaja-846-24-03-2017-17-39-07.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>Ilaiyaraaja</h3>
                    </div>
                    <div class="cr4">
                        <img src="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/yuvan-shankar-raja-2551-24-03-2017-12-31-18.jpg" style="border-radius: 50%;" height="100%" width="100%" alt="">
                        <h3>&ensp;&ensp;&ensp;Yuvan Shankar Raja</h3></h3>
                    </div>
                </div>
           </div>
        </div>
    </body>
</html>
<script>
    fun();
</script>