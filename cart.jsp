<!Doctype>
<HTML>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <title>Cart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
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
            #srchbtn{
                background-color:transparent;
                border:none;
                color:black;
                outline:none;
                margin-left:-2.5%;
				cursor:pointer;
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
			.srynocart{
				font-size:30px;
				font-weight:bold;
				color:#cccccc;
				padding-top:5%;
			}
		.mainbody{
		}
		.cartitem{
			border:none;
			box-shadow:0px 0px 5px #b3b3b3;
			margin-top:2%;
			width:40%;
			height:49%;
			background-color:#e6e6e6;
			border-radius:10px;
			padding-top:1%;
			padding-bottom:1%;
		}
		.mname{
			color:black;
			font-weight:bold;
			font-size:30px;
		}
		.tname{
			color:#404040;
			padding-top:2%;
			font-size:14px;
		}
		.tickets{
			color:#404040;
			margin:0px;
			padding-top:0.5%;
			font-size:14px;
		}
		
		.seats{
			color:#404040;
			padding-top:0.5%;
			font-size:14px;
		}
		.price{
			color:#404040;
			padding-top:0.5%;
			font-size:14px;
		}
		.timings{
			color:#404040;
			padding-top:0.5%;
			font-size:14px;
			margin-left:-15%;
		}
		.date{
			font-size:14px;
			color:#404040;
			margin-top:-5.1%;
			margin-left:25%;
		}
		.ptop
		{
			border:none;
			height:30px;
			width:200px;
			cursor:pointer;
			background-color:#000066;
			color:white;
		}
		.ptop:hover{
			background-color:white;
			color:#000066;
			border:none;
			font-size:15px;
			box-shadow:0px 5px 20px #000066;
			transition:0.3s;
		}
		 
            @media screen and (max-width: 1280px)
            {
                #location{
                    margin-left:10%;
                    font-size:17px;
                    color: #d9d9d9;
                    border:none;
                    background-color:#595959;
                    outline:none;
                    border-radius:15px;
                }
                #navbar{
                    margin-top:-1.1%;
                    height:50px;
                    padding:50%;
                }
                #acc{
                    margin-right:14%;
                }
                #t{
                    margin-top:-5%;
                }
            }
        </style>

    </head>
    <body bgcolor="f2f2f2" style="font-family:Roboto,sans-serif;">

        <div class="row" id="bms">
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
            <a href="home" class="navelement" ><i class="fa fa-film" aria-hidden="true"></i> Movies</a>
            <a href="offers.html" class="navelement" ><i class="fa fa-tag" aria-hidden="true"></i> Offers</a>
            <a href="cart" class="navelement" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a>
            <a href="bookings"  class="navelement" ><i class="fa fa-bars" aria-hidden="true"></i> Bookings</a>
            <a href="#profile" onclick="profile()" class="navelement" ><i class="fa fa-cogs" aria-hidden="true"></i> Profile</a>
        </div>
		<div class="mainbody">
			<center>
			<c:if test="${empty cartList}">
						<div class="srynocart">
							No Cart items      
						</div>
			</c:if>
		 
            <c:forEach var="cartMaster" items="${cartList}" varStatus="loopCount">
				<div class="cartitem">
                        <p class="mname">${cartMaster.mname}</p>
						<p class="tname"><b>${cartMaster.tname}</b></p>
						<p class="tickets" >Tickets :<b> 1 x ${cartMaster.noftickets}</b></p>
						<p class="price">Price : <b> &#8377;${cartMaster.price}</b></p>
						<p class="seats" >Seats : <b>${cartMaster.seats}.</b></p>
						<p class="timings">Time : <b>${cartMaster.mtime}</b></p>
						<p class="date">Date : <b>${cartMaster.mdate} </b></p>
						<button onclick="pay('${cartMaster.cartid}')" class="ptop">Proceed to payment</button>
						<button class="ptop" onclick="cancel('${cartMaster.cartid}')">Delete</button>
				</div>
				<br>
            </c:forEach>
			</center>
		</div>
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
            function nocart()
            {
                alert("No cart items available");
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
			function pay(cartid)
			{
				alert(cartid);
				document.cookie="tempcartid="+cartid;
				$(location).attr('href','proceedtopay');
			}
			function cancel(cartid)
			{
				alert("Deleting the item from cart !");
				document.cookie="deletecartid="+cartid;
				$(location).attr('href','cancel');
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
    </body>
</HTML>