<!Doctype>
<HTML>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<title>Bookings</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta charset="utf-8" />
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	<link href="https://fonts.googleapis.com/css" rel="stylesheet">
	<style>
		*{
		box-sizing:border-box;
		}
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
		a{
		text-decoration:none;
		}
		a:hover{
		color:white;
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
				margin-top:-6%;
				display:none;
			}
		#signinbtn{
                height:35px;
                width:90px;
				//float:left;
                border-radius:3px;
                outline:none;
                border:none;
                background-color:white;
                font-weight:bold;
				transition: 0.3s;
                color:#000066;
				margin-top:-5.5%;
				margin-left:80%;
            }
			#signinbtn:hover{
                border:2px solid white;
                background-color:#000066;
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
			.footer{
		background-color:#00134d;
		text-align:center;
		}
		.footertext{
		color:white;
		margin-right:6%;
		}
		.footertext:hover{
		color:4da6ff;
		}
		.footericons{
		margin-right:2.5%;
		border-radius:50%;
		border:1px solid #999999;
		color:999999;
		padding:7px;
		}
		.book{
			box-sizing:border-box;
			margin-top:2%;
			margin-left:10%;
			width:80%;
			height:35%;
			background-color:#e6e6e6;
			border-radius:15px;
		}
		.book:hover{
			background-color:#e6e6e6;
			transform:scale(1.05);
		     transition:transform 0.3s;
		}
		.bimg{
			margin-top:12px;
			margin-left:1%;
			height:90%;
			width:15%;
			float:left;
			border-radius:10px;
			box-shadow:0px 0px 10px #666666;
		}
		.mname{
			color:black;
			padding-top:33px;
			font-weight:bold;
			font-size:30px;
			padding-left:20%;
			margin-bottom:8px;
		}
		.tname{
			color:#404040;
			padding-left:20%;
			margin:0;
			padding-top:2%;
			font-size:14px;
		}
		.tickets{
			color:#404040;
			margin:0px;
			padding-left:20%;
			font-size:14px;
		}
		
		.seats{
			color:#404040;
			margin-top:15px;
			padding-left:20%;
			font-size:14px;
		}
		.price{
			color:#404040;
			margin-top:-4%;
			margin-right:18%;
			float:right;
			font-size:14px;
		}
		.timings{
			color:#404040;
			margin-top:-5%;
			float:right;
			margin-right:-10%;
			font-size:14px;
		}
		.date{
			color:#404040;
			margin-top:-2%;
			float:right;
			margin-right:17.2%;
			font-size:14px;
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
			.srynobookings{
				font-size:30px;
				font-weight:bold;
				color:#cccccc;
				padding-top:5%;
				text-align:center;
			}
		@media screen and (max-width: 1280px)
		{
			#location{
			margin-left:10%;
			font-size:90%;
			color: #d9d9d9;
			border:none;
			outline:none;
			border-radius:15px;
			}
			#navbar{
			margin-top:-1.1%;
			height:50px;
			}
			#srch{
			margin-top:30px;
			margin-bottom:2%;
			border-radius:20px;
			height:30px;
			width:30%;
			margin-left:3%;
			outline:none;
			padding:1%;
			text-align:center;
			color:595959;
			font-weight:bold;
			border:1px solid transparent;
		}
		}
		
	</style>
</head>
<body bgcolor="f2f2f2" style="font-family:Roboto,sans-serif;">
	<div  id="bms">
			<a href="home" id="home" ><p id="bmsimg">watch<b id="my">my</b>show</p></a>
		<form class="frm" method="post"  id="searchDetailsFormId">
			<input type="textbox" id="srch"  name="search" placeholder="Search  for  Movies  Theatres  Places  Events " />
			<button id="srchbtn" onclick="saveSearchDetails(this)"><i class="fa fa-search" id="search" aria-hidden="true"></i></button>
		</form>
		<button id="signinbtn" onclick="login()" name="signin" >Sign in</button>
            <div id="t">
				<a id="acc" name="account" onclick="outtoggle()"> <i class="fa fa-user-circle" style="color:white;font-size:40px;height:50px;width:50px;border-radius:50%;" aria-hidden="true"></i></a>
				<div class="outdiv">
					<button class="outbtn hidec" id="outbtn" onclick="out()">SignOut</button>
				</div>
			</div>
	</div>
	<div id="navbar">
		<a href="home"  class="navelement" ><i class="fa fa-film" aria-hidden="true"></i> Movies</a>
		<a href="offers.html"  class="navelement" ><i class="fa fa-tag" aria-hidden="true"></i> Offers</a>
		<a href="cart"  class="navelement" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a>
		<a href="bookings"  class="navelement" ><i class="fa fa-bars" aria-hidden="true"></i> Bookings</a>
		<a href="#profile" onclick="profile()" class="navelement" ><i class="fa fa-cogs" aria-hidden="true"></i> Profile</a>
	</div>
	<section>
		<c:if test="${empty bookingsList}">
						<div class="srynobookings">
							No Bookings till now      
						</div>
        </c:if>
		<c:if test="${not empty bookingsList}">
            <c:forEach var="bookingsMaster" items="${bookingsList}" varStatus="loopCount">
				<div class="book">
						<img class="bimg" id="img" src="images/${bookingsMaster.imgpath}"></img>
                        <p class="mname">${bookingsMaster.mname}</p>
						<p class="tname">${bookingsMaster.tname}</p></br>
						<p class="tickets" >Tickets : <b>1 x ${bookingsMaster.noftickets}</b></p>
						<p class="price">Price : <b>&#8377;${bookingsMaster.price}</b></p>
						<p class="seats" >Seats : <b>${bookingsMaster.seats}</b></p> 
						<p class="date">Date : <b>${bookingsMaster.mdate}</b></p>
						<p class="timings">Timings : <b>${bookingsMaster.mtime}</b></p>
						
				</div>
            </c:forEach>
		</c:if>
	</section>
	<br>
	<br>
	<script>
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
                window.location.href = "login.jsp";
            }
			function outtoggle()
			{
				$('#outbtn').toggleClass("hidec");
			}
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
	</script>
</html>