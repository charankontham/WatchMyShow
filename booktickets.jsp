<!Doctype>
<HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<meta charset = "utf-8" /> 
	<title>
		${mname}
	</title>
	<meta name="viewport" content="width=device-width" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
	<style>
		body{
		margin:0px;
		padding:0px;
		}
		#bms{
		background-color:#000066;
		color:white;
		margin:0%;
		height:100px;;
		}
		#bmsimg{
		float:left;
		font-size:25px;
		font-family: 'Lilita One', cursive;
		margin-left:8%;
		}
		#home{
		color:white;
		}
		#my{
		font-style:italic;
		padding-left:3px;
		padding-right:3px;
		border-radius:8px;
		background-color:#cc2900;
		}
		#srch{
		margin-top:30px;
		margin-bottom:2%;
		border-radius:20px;
		height:30px;
		width:400px;
		margin-left:3%;
		outline:none;
		padding:1%;
		text-align:center;
		color:595959;
		font-weight:bold;
		border:1px solid transparent;
		}
		#signinbtn{
		margin-left:3%;
		height:35px;
		width:90px;
		border-radius:15px;
		outline:none;
		border:none;
		background-color:white;
		font-weight:bold;
		color:#000066;
		}
		a{
		text-decoration:none;
		}
		a:hover{
		color:white;
		}
		#signinbtn:hover{
		border:2px solid white;
		background-color:#000066;
		transition:0.3s;
		color:white;
		}
		#navbar{
		background-color:#00134d;
		margin-top:-1.1%;
		text-align:center;
		padding:0.7%;
		}
		.navelement{
		margin-left:3%;
		font-size:17px;
		color:#d9d9d9;
		padding:0.5%;
		}
		.navelement:hover{
		border-radius:12px;
		color:white;
		}
		#m{
		background-color:#cceeff;
		margin-top:-2.3%;
		box-shadow:0px 0px 10px #bfbfbf;
		height:165px
		}
		#a11{
		margin-left:3%;
		padding-top:2%;
		font-size:33px;
		color:black;
		font-weight:bold;
		text-shadow:0px 0px 20px #595959;
		}
		#ua{
		margin-top:-1.3%;
		margin-left:3%;
		border:1px solid black;
		border-radius:50%;
		float:left;
		font-size:13px;
		padding:5px;
		color:black;
		text-shadow:0px 0px 20px black;
		}
		.fa-heart{
		color:red;
		margin-top:-1.0%;
		margin-left:1.5%;
		}
		#a12{
		margin-top:-1.3%;
		margin-left:8%;
		color:black;
		font-weight:bold;
		font-size:20px;
		}
		#crime{
		margin-top:-2.5%;
		margin-left:12%;
		border:1px solid black;
		float:left;
		color:black;
		border-radius:10px;
		font-size:10;
		padding:3px;
		}
		#thriller{
		margin-top:-2.5%;
		margin-left:15%;
		border:1px solid black;
		float:left;
		border-radius:10px;
		font-size:10;
		color:black;
		padding:3px;
		}
		#date{
		margin-top:-2.5%;
		margin-left:20%;
		color:black;
		font-size:14px;
		}
		#time{
		margin-top:-2.1%;
		margin-left:27%;
		color:black;
		font-size:14px;
		}
		#dir{
		margin-top:-5.6%;
		margin-left:64%;
		color:black;
		font-size:15;
		}
	    #cac{
		margin-top:-2.1%;
		margin-left:70%;
		color:black;
		font-size:15;
		}
		.img{
		font-size:50px;
		margin-top:-3.5%;
		border:1px solid black;
		float:left;
		margin-right:5%;
		border-radius:10px;
		padding:3px;
		}
		.img1{
		margin-left:65%;
		margin-top:-3.5%;
		border:1px solid black;
		float:left;
		margin-right:5%;
		border-radius:10px;
		font-size:50px;
		padding:1px;
		}
		.name1{
		margin-top:1%;
		margin-left:63%;
		width:7%;
		text-align:center;
		float:left;
		font-size:14px;
		color:black;
		}
		.name{
		float:left;
		margin-top:1%;
		width:8%;
		text-align:center;
		font-size:14px;
		color:black;
		}
		.button{
		margin-right:1%;
		height:45px;
		width:40px;
		border:1px solid #8c8c8c;
		background-color:white;
		color:black;
		border-radius:10px;
		outline:none;
		padding:2px;
		}
		#btn1{
		margin-top:1%;
		height:45px;
		border:1px solid #8c8c8c;
		margin-right:1%;
		width:40px;
		padding:2px;
		background-color:white;
		color:black;
		border-radius:10px;
		outline:none;
		}
		#dates{
		float:left;
		width:600px;
		margin-left:2%;
		}
		#dimension{
		float:right;
		margin-top:1%;
		margin-right:20%;
		padding:0px;
		}
		#lin1{
		border-left:1px solid #a6a6a6;
		border-right:1px solid #a6a6a6;
		border-bottom:3px solid #00e6e6;
		padding:5px;
		}
		#lin2{
		border-right:1px solid #a6a6a6;
		padding:5px;
		}
		.dimen:hover{
		color:#290066;
		}
		.dot {
		height: 12px;
		width: 12px;
		margin-top:5%;
		margin-left:-34%;
		background-color: green;
		border-radius: 50%;
		display: inline-block;
		}
		.dot1 {
		height: 12px;
		width: 12px;
		margin-top:5%;
		margin-left:8%;
		background-color:orange;
		border-radius: 50%;
		display: inline-block;
		}
		#avail{
		margin-left:2.2%;
		margin-top:-1%;
		font-size:12px;
		}
		#fast{
		margin-left:10.2%;
		margin-top:-1.7%;
		font-size:12px;
		}
		#content{
		margin-bottom:5%;
		}
		.th{
		margin-top:2%;
		margin-left:2%;
		font-size:15px ;
		font-weight:bold;
		}
		.tm1{
		border:1px solid black;
		float:left;
		border-radius:3px;
		padding:8px;
		font-size:13px;
		margin-top:1%;
		color:green;
		margin-left:20%;
		}
		.tm1:hover{
		color:green;
		}
		.tm{
		border:1px solid black;
		float:left;
		margin-top:1%;
		border-radius:3px;
		padding:8px;
		font-size:13px;
		color:green;
		margin-left:3%;
		}            
		.tm:hover{
		color:green;
		}
		.days{
		display:none;
		}
		#st{
		display:block;
		}
		#nothr{
		display:none;
		margin-bottom:200px;
		}
		#nothrtxt{
		color:#595959;
		font-size:16px;
		text-align:center;
		}
		#srchbtn{
        background-color:transparent;
        border:none;
        color:black;
        outline:none;
        margin-left:-2.5%;
		cursor:pointer;
        }
		#signinbtn{
		margin-top:-5.5%;
		//float:left;
		margin-left:80%;
		height:35px;
		width:90px;
		border-radius:15px;
		outline:none;
		border:none;
		background-color:white;
		font-weight:bold;
		color:#000066;
		}
		#acc{
				margin-left:3%;
				border-radius:50%;
				margin-top:0.4%;
				float:right;
				margin-right:16%;
				cursor:pointer;
		}
		#t{
				margin-top:-5%;
				display:none;
		}
		.outdiv{
			margin-top:0.7%;
			float:right;
			margin-right:-14%;
		}
		.outbtn{
			cursor:pointer;
			border-radius:20px;
			height:30px;
			width:100px;
			border:none;
			color:#000066;
			background-color:white;
			transition:0.5s;
			font-weight:bold;
			outline:none;
		}
		.outbtn:hover{
			box-shadow:0px 0px 10px white;
			color:white;
			background-color:#000066;
		}
		.hidec{
			display:none;
		}
		#srchbtn{
                background-color:transparent;
                border:none;
                color:black;
                outline:none;
                margin-left:-2.5%;
				cursor:pointer;
        }
		/* width */
		::-webkit-scrollbar {
		width: 8px;
		}

		/* Track */
		::-webkit-scrollbar-track {
		box-shadow: inset 0 0 5px grey; 
		border-radius: 10px;
		}
 
		/* Handle */
		::-webkit-scrollbar-thumb {
		background: #8c8c8c; 
		border-radius: 10px;
		}

		/* Handle on hover */
		::-webkit-scrollbar-thumb:hover {
		background: #00091a; 
		}
		@media screen and (max-width: 1366px)
		{
			#m{
			background-color:#cceeff;
			margin-top:-2.3%;
			box-shadow:0px 0px 10px #bfbfbf;
			height:150px
			}
			#a11{
			margin-left:3%;
			padding-top:1%;
			font-size:33px;
			color:black;
			font-weight:bold;
			text-shadow:0px 0px 20px #595959;
			}
			#ua{
			margin-top:-1%;
			margin-left:3%;
			border:1px solid black;
			border-radius:50%;
			float:left;
			font-size:13px;
			padding:5px;
			color:black;
			text-shadow:0px 0px 20px black;
			}
			.fa-heart{
			color:red;
			margin-top:-0.7%;
			margin-left:1.5%;
			}
			#a12{
			margin-top:-1.3%;
			margin-left:8.3%;
			color:black;
			font-weight:bold;
			font-size:20px;
			}
			#crime{
			margin-top:-3.1%;
			margin-left:12%;
			border:1px solid black;
			float:left;
			color:black;
			border-radius:10px;
			font-size:10;
			padding:3px;
			}
			#thriller{
			margin-top:-3.1%;
			margin-left:15.5%;
			border:1px solid black;
			float:left;
			border-radius:10px;
			font-size:10;
			color:black;
			padding:3px;
			}
			#date{
			margin-top:-3%;
			margin-left:20.5%;
			color:black;
			font-size:14px;
			}
			#time{
			margin-top:-2.3%;
			margin-left:27.5%;
			color:black;
			font-size:14px;
			}
			#dir{
			margin-top:-6%;
			margin-left:64%;
			color:black;
			font-size:15;
			}
			#cac{
			margin-top:-2.35%;
			margin-left:70.5%;
			color:black;
			font-size:15;
			}
			.img{
			height:50px;
			width:50px;
			margin-top:-3.5%;
			border:1px solid black;
			float:left;
			margin-right:3%;
			border-radius:50%;
			padding:1px;
			}
			.img1{
			margin-left:65%;
			height:50px;
			width:50px;
			margin-top:-3.5%;
			border:1px solid black;
			float:left;
			margin-right:3%;
			border-radius:50%;
			font-size:12;
			padding:1px;
			}
			.name1{
			margin-top:0.6%;
			margin-left:64%;
			float:left;
			font-size:13px;
			color:black;
			}
			.name{
			float:left;
			margin-top:0.6%;
			margin-left:3.4%;
			font-size:13px;
			color:black;
			}
			
			#avail{
			margin-left:2.2%;
			margin-top:-1.2%;
			font-size:12px;
			color:#808080;
			}
			#fast{
			margin-left:10.2%;
			margin-top:-1.9%;
			font-size:12px;
			color:#808080;
			}
			.dot {
			height: 12px;
			width: 12px;
			margin-top:5%;
			margin-left:-38%;
			background-color: green;
			border-radius: 50%;
			display: inline-block;
			}
			.dot1 {
			height: 12px;
			width: 12px;
			margin-top:5%;
			margin-left:8%;
			background-color:orange;
			border-radius: 50%;
			display: inline-block;
			}
			#nothr{
			display:none;
			}
			#nothrtxt{
			color:#595959;
			font-size:16px;
			text-align:center;
			}
		}
		</style>
</head>
<body bgcolor="f2f2f2" style="font-family:Roboto,sans-serif;overflow-y:">
	<div id="bms">
			<a href="home" id="home"><p id="bmsimg">watch<b id="my">my</b>show</p></a>
		<form class="frm" method="post"  id="searchDetailsFormId">
			<input type="textbox" id="srch"  name="search" placeholder="Search  for  Movies  Theatres  Places  Events " />
			<button id="srchbtn" onclick="saveSearchDetails(this)"><i class="fa fa-search" id="search" aria-hidden="true"></i></button>		
			<button id="signinbtn" onclick="login()" name="signin" >Sign in</button>
				<div id="t">
					<a id="acc" name="account" onclick="outtoggle()"> <i class="fa fa-user-circle" style="color:white;font-size:40px;height:50px;width:50px;border-radius:50%;" aria-hidden="true"></i></a>
					<div class="outdiv">
						<button class="outbtn hidec" id="outbtn" onclick="out()">SignOut</button>
					</div>
				</div>
		</form>
	</div>
	<div id="navbar">
		<a href="home" class="navelement" ><i class="fa fa-film" aria-hidden="true"></i> Movies</a>
        <a href="offers.html" class="navelement" ><i class="fa fa-tag" aria-hidden="true"></i> Offers</a>
        <a href="cart" class="navelement" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a>
        <a href="bookings"  class="navelement" ><i class="fa fa-bars" aria-hidden="true"></i> Bookings</a>
        <a href="#" onclick="profile()" class="navelement" ><i class="fa fa-cogs" aria-hidden="true"></i> Profile</a>
	</div>
	<div id="m">
	<div id="mmm">
		<p id="a11"> ${mname}</p>
		<p id="ua" >UA</p>
		<i class="fa fa-heart" aria-hidden="true"></i>
		<p id="a12"> ${rating}%</p>
		<p id="crime">CRIME</p>
		<p id="thriller">${genre}</p>
		<p id="date"> ${releasedate}</p>
		<p id="time"> ${duration}</p>
		<div id="imgs">
			<p id="dir">DIRECTOR</p>
			<p id="cac">CAST&CREW </p>
			<i class="fa fa-user img1" aria-hidden="true"></i>
			<i class="fa fa-user img" aria-hidden="true"></i>
			<i class="fa fa-user img" aria-hidden="true"></i>
			<i class="fa fa-user img" aria-hidden="true"></i>
			<p class="name1">${director}</p>
			<p class ="name">${hero}</p>
			<p class="name">${heroine}</p>
			<p class="name">${cast4}</p>
		</div>
	</div>
	</div>
	<div>
		<form>
			<div id="dates">
				
				<button type="button" id="btn1" onclick="set(this.id,'0','08 Tue')" class="button" name="08" >08<br>Today</button>
				<button type="button" id="btn2" onclick="set(this.id,'1','09 Wed')" class="button" name="09" >09<br>WED</button>
				<button type="button" id="btn3" onclick="set(this.id,'2','10 Thu')" class="button" name="10" >10<br>THU</button>
				<button type="button" id="btn4" onclick="set(this.id,'3','11 Fri')" class="button" name="11" >11<br>FRI</button>
				<button type="button" id="btn5" onclick="set(this.id,'4','12 Sat')" class="button" name="12" >12<br>SAT</button>
				<button type="button" id="btn6" onclick="set(this.id,'5','13 Sun')" class="button" name="13" >13<br>SUN</button>
				<button type="button" id="btn7" onclick="set(this.id,'6','14 Mon')" class="button" name="14" >14<br>MON</button>
				
			</div>
		</form>
		<script>
            $("#srchbtn").click(function(e) {
                     if($("#srch").val()==null || $("#srch").val().trim()==""){
                            $("#srch").focus();
                            alert("Please provide search value");
                            e.preventDefault();
                       }else{
                            document.getElementById("searchDetailsFormId").action = "search-details";
                            document.getElementById("searchDetailsFormId").submit();
                       }
             });
			document.getElementById("btn1").style="background-color:#1ad1ff;color:white;";
			document.cookie="dt=08-Tue";
			function set(btn,bnum,dt)
			{
				var dt=dt.replace(/ /g, "-");
				document.cookie="dt="+dt;
				localStorage.setItem("dt",dt);
				for(i=0;i<7;i++)
				{
					if(i<4)
					{
						$("#nothr").hide();
						if(i == bnum)
						{
							document.getElementsByClassName("days")[i].style.display = "block";
						}
						else
						{
							document.getElementsByClassName("days")[i].style.display = "none";							
						}
						
					}
					else if(i<= bnum)
					{
						$("#nothr").show();
					}
					
					
					var k = document.getElementsByClassName("button")[i].id;
					var m = document.getElementById(k);
					
					if(m.style.color=="white")
					{
						m.style.backgroundColor="white";
						m.style.color="black";
					}
				}
				document.getElementById(btn).style.backgroundColor="#1ad1ff";
				document.getElementById(btn).style.color="white";
			}
		</script>
		<div id="dimension">
			<a  class="dimen" id="lin1" onclick="setb(this.id)" href="#">Telugu-2D</a>
	    	<a  class="dimen" id="lin2" onclick="setb(this.id)" href="#">Telugu-3D</a>
		</div>
		<script>
			function setb(idb)
			{
				if(idb=='lin1')
				{
					document.getElementById('lin1').style="border-bottom:border-left:1px solid #a6a6a6;border-right:1px solid #a6a6a6;border-bottom:3px solid #00e6e6;";
					document.getElementById('lin2').style="border-bottom:none;";
					document.getElementById('tlist').style="display:block;";
					document.getElementById('nothr').style="display:none;";
				}
				else if(idb=='lin2')
				{
					document.getElementById('lin2').style = "border-bottom:border-left:1px solid #a6a6a6;border-right:1px solid #a6a6a6;border-bottom:3px solid #00e6e6;";
					document.getElementById('lin1').style = "border-bottom:none;";
					document.getElementById('tlist').style = "display:none;";
					document.getElementById('nothr').style = "display:block;";
				}
			}
		</script>
	</div>
	<div id="content">
			<span class="dot"></span>
			<span class="dot1"></span>
			<p id="avail">AVAILABLE</p>
			<p id="fast">FAST FILLING</p>
			<div id="tlist">
				<div id="st" class="days">
				<!--<c:forEach begin="1" end="3" varStatus="loop">
					Index: ${loop.index}<br/>
					<c:choose>
						<c:when test="${orderUploadAction.errors.size()==0}">
							<script type="text/javascript"> </script>
						</c:when>
						<c:otherwise>
							<script> </script>
						</c:otherwise>
					</c:choose>
				</c:forEach>-->
				<div id="">
				<hr size="1px" color="#d9d9d9">
					<p class="th" name="hhh">Asian GPR Multiplex: Kukatpally</p>
					<p class="tm1" style="color:#a6a6a6;border:1px solid #a6a6a6;" >10:40 AM</p>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex : Kukatpally','1:40 PM')">1:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex : Kukatpally','4:40 PM')">4:40 PM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;" >7:40 PM</p>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex : Kukatpally','10:40 PM')" >10:40 PM</a>
				</div>
				<div id="">
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Cinepolis: Manjeera Mall, Kukatpally</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','1:40 PM')">10:40 AM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','1:40 PM')">1:40 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','4:40 PM')">4:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','7:40 PM')">7:40 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','10:00 PM')">10:00 PM</a>
				</div>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >PVR Forum Sujana Mall: Kukatpally</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Sujana Mall: Kukatpally','10:00 AM')">10:00 AM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Sujana Mall: Kukatpally','1:10 PM')">1:10 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Sujana Mall: Kukatpally','4:20 PM')">4:20 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Sujana Mall: Kukatpally','7:25 PM')">7:25 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Sujana Mall: Kukatpally','10:40 PM')">10:40 PM</a>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Arjun 70MM, Kukatpally</p>
					<a class="tm1" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Arjun 70MM, Kukatpally','10:00 AM')">10:00 AM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Arjun 70MM, Kukatpally','2:45 PM')">2:45 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Arjun 70MM, Kukatpally','6:45 PM')">6:45 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Arjun 70MM, Kukatpally','10:40 PM')">10:40 PM</a>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Cine Town: Miyapur</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','10:00 AM')">10:00 AM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','1:40 PM')">1:40 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','4:30 PM')">4:30 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','7:40 PM')">7:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','10:40 PM')">10:40 PM</a>
				</div>
				<div class="days">
				<hr size="1px" color="#d9d9d9">
					<p class="th">Asian GPR Multiplex: Kukatpally</p>
					<p class="tm1" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:40 AM</p>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','1:40 PM')">1:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','4:40 PM')">4:40 PM</a>
					<a class="tm" href="#Seating" style="color:orange;" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','7:40 PM')">7:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','10:40 PM')">10:40 PM</a>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Cinepolis: Manjeera Mall, Kukatpally</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','10:40 AM')">10:40 AM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">1:40 PM</p>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','4:40 PM')">4:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','7:40 PM')">7:40 PM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:00 PM</p>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Shivapartvathi 70MM, Kukatpally</p>
					<p class="tm1" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:00 AM</p>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Shivapartvathi 70MM, Kukatpally','1:10 PM')">1:10 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Shivapartvathi 70MM, Kukatpally','4:20 PM')" >4:20 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Shivapartvathi 70MM, Kukatpally','7:25 PM')" >7:25 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Shivapartvathi 70MM, Kukatpally','10:40 PM')">10:40 PM</a>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Cine Town: Nizampet</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Nizampet','10:00 AM')">10:00 AM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">1:40 PM</p>
					<a class="tm" style="color:orange;"href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Nizampet','4:30 PM')">4:30 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Nizampet','7:40 PM')">7:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Nizampet','10:40 PM')">10:40 PM</a>
				
				</div>
				<div class="days">
				<hr size="1px" color="#d9d9d9">
					<p class="th">Asian GPR Multiplex: Kukatpally</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','10:40 AM')">10:40 AM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">1:40 PM</p>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','4:40 PM')">4:40 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','7:40 PM')">7:40 PM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:40 PM</p>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Cinepolis: Manjeera Mall, Kukatpally</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','10:40 AM')">10:40 AM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">1:40 PM</p>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','4:40 PM')">4:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','7:40 PM')">7:40 PM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:00 PM</p>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Cine Town: Miyapur</p>
					<p class="tm1" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:00 AM</p>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','1:40 PM')">1:40 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','4:30 PM')">4:30 PM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">7:40 PM</p>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Cine Town: Miyapur','10:40 PM')">10:40 PM</a>
				</div>
				<div class="days">
				<hr size="1px" color="#d9d9d9">
					<p class="th">Asian GPR Multiplex: Kukatpally</p>
					<p class="tm1" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:40 AM</p>
					<a  class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','1:40 PM')">1:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','4:40 PM')">4:40 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','7:40 PM')">7:40 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','Asian GPR Multiplex: Kukatpally','10:40 PM')">10:40 PM</a>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >Cinepolis: Manjeera Mall, Kukatpally</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','10:40 AM')">10:40 AM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">1:40 PM</p>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','4:40 PM')" >4:40 PM</a>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','Cinepolis: Manjeera Mall, Kukatpally','7:40 PM')" >7:40 PM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">10:00 PM</p>
				<hr size="1px" width="80%" align="left" color="#d9d9d9" style="margin-top:6%;">
					<p class="th" >PVR Forum Mall,Kukatpally</p>
					<a class="tm1" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Mall,Kukatpally','10:00 AM')">10:00 AM</a>
					<p class="tm" style="color:#a6a6a6;border:1px solid #a6a6a6;">1:40 PM</p>
					<a class="tm" style="color:orange;" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Mall,Kukatpally','4:30 PM')">4:30 PM</a>
					<a class="tm" href="#Seating" onclick="setname('Arjun Suravaram','PVR Forum Mall,Kukatpally','7:40 PM')">7:40 PM</a>
					<p class="tm" >10:40 PM</a>
				</div>
			</div>
			<div id="nothr" >
				<br>
					<p id="nothrtxt"> No theatres available </p>
				</br>
			</div>
			<script>
				function setname(mname,tname,mtime)
				{
					//alert("");
					var tname = tname.replace(/ /g, "-");
					tname = tname.replace(/:/g, "*");
					tname = tname.replace(/,/g, "^");
					var mtime = mtime.replace(/ /g, "-");
					mtime = mtime.replace(/:/g, "*");
					document.cookie="tname="+tname;
					document.cookie="mtime="+mtime;
					//localStorage.setItem("mname",mname);
					//localStorage.setItem("tname",tname);
					//localStorage.setItem("mtime",mtime);
					$(location).attr('href','seating');
				}
				if (getCookieExist("usern") != null)
                {
					//alert("Cookie Exists already");
					if(getCookie("usern") != "no")
					{
						//alert("User already exists");
						$('#t').show();
						$('#signinbtn').hide();
					}
					else
					{
						$('#t').hide();//alert("User Not exists");
					}
                }
				else
				{
					document.cookie = "usern=no";//alert("Cookie Not exists");
				}
            function login()
            {
                window.location.href = "login.html";
            }
			function outtoggle()
			{
				$('#outbtn').toggleClass("hidec");
			}      
            $("#srchbtn").click(function(e) {
                     if($("#srch").val()==null || $("#srch").val().trim()==""){
                            $("#srch").focus();
                            alert("Please provide search value");
                            e.preventDefault();
                       }else{
                            document.getElementById("searchDetailsFormId").action = "search-details";
                            document.getElementById("searchDetailsFormId").submit();
                       }
             });
			function out()
			{
				document.cookie = "usern=no";
				$(location).attr('href','home');
			}
			function profile()
			{
				if(getCookie("usern")!="no")
				{
					$(location).attr('href','profile');
				}
				else
				{
					alert("Login to see profile");
				}
			}
			function getCookieExist(name) {
				var dc = document.cookie;
				var prefix = name + "=";
				var begin = dc.indexOf("; " + prefix);
				if (begin == -1) {
					begin = dc.indexOf(prefix);
					if (begin != 0) return null;
				}
				else
				{
					begin += 2;
					var end = document.cookie.indexOf(";", begin);
					if (end == -1) {
						end = dc.length;
					}
				}
				// because unescape has been deprecated, replaced with decodeURI
				//return unescape(dc.substring(begin + prefix.length, end));
				return decodeURI(dc.substring(begin + prefix.length, end));
			}
			function getCookie(cname) {
                var name = cname + "=";
                var decodedCookie = decodeURIComponent(document.cookie);
                var ca = decodedCookie.split(';');
                for (var i = 0; i < ca.length; i++) {
                    var c = ca[i];
                    while (c.charAt(0) == ' ') {
                        c = c.substring(1);
                    }
                    if (c.indexOf(name) == 0) {
                        return c.substring(name.length, c.length);
                    }
                }
                return null;
            }
			</script>
	</div><br><br>
</body>
</html>