<!Doctype>
<HTML>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <title>BookMyShow</title>
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
                outline:none ;
            }
            a{
                text-decoration:none;
            }
            a:hover{
                color:white;
            }
            #location{
                margin-left:23%;
                font-size:17px;
                color: #d9d9d9;
                border:none;
                background-color:#000066;
                outline:none;
				cursor:pointer;
                border-radius:15px;
            }
            #location:hover{
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
            #imgs{
                height:40%;
                width:32%;
                margin:0.5%;
				transition:0.3s;
            }
			#imgs:hover{
				transform:scale(1.05);
				box-shadow:0px 0px 50px black;
			}
            #imgsl{
                height:45px;
                width:291px;
            }
            #imgslider{
                background-color:white;
                padding-bottom:0.7%;
            }
            #trendsearch{
                float:left;
            }
            #tablets{
                margin-left:40%;
            }
            .tdts{
                border-top:none;
                border-left:none;
                border-right:none;
                border-bottom:1px solid e6e6e6;
                background-color:white;
                padding:7% 10% 7% 10%;
                width:400px;
                border-radius:10px;
                font-family:Roboto,sans-serif;
				transition:0.3s;
            }
			.tdts:hover{
				transform:scale(1.07);
			}
            .tdlinkts:hover{
                color:#00001a;
				
            }
            #movies{
                margin-left:35%;
                padding-top:0.001%;
            }
            #moviestitle{
                background-color:f2f2f2;
                font-size:20px;
                font-weight:bold;
                margin-left:4%;
                margin-bottom:0px;
            }
            .tdm{
                border:1px solid white;
                border-radius:10px;
                background-color:white;
                text-align:center;
                padding-bottom:1%;
                font-size:15px;
				transition:0.1s;
            }
            .tdm:hover{
                box-shadow:0px 0px 10px #404040;
				transform:scale(1.02);
            }
            .movieimg{
                width:230px;
                height:300px;
                border-radius:10px;
            }
            .movieslink{
                color:666666;
            }
            .movieslink:hover{
                color:black;
                font-size:15.3px;
            }
            .fa-heart{
                color:e62e00;
                margin-right:7%;
            }
            .moviedetails{
                font-size:12px;
                color:bfbfbf;
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
			.srynoresults{
				height:200px;
				font-size:25px;
				color:#999999;
				margin-left:20%;
				margin-top:20%;
			}
            @media screen and (max-width: 1280px)
            {
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
			
            <select id="location" name="location">
                <option value="1">Hyderabad</option>
                <option value="2">Warangal</option>
                <option value="3">Karimnagar</option>
                <option value="4">Nizamabad</option>
                <option value="5">Kurnool</option>
            </select>
			
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
            <a href="#" onclick="profile()" class="navelement" ><i class="fa fa-cogs" aria-hidden="true"></i> Profile</a>
        </div>
        <!-- Image Slider -->
        <div class="row" id="imgslider">
            <a href="#" onclick="set('Saaho')" ><img src="images/saahow.jpeg" id="imgs"></img></a>
            <a href="#" onclick="set('Syeera')"><img src="images/syeeraw.jpeg" id="imgs" ></img></a>
            <a href="#" onclick="set('Raja Vaaru Rani Gaaru')"><img src="images/rajaw.jpeg" id="imgs"></img></a>
        </div>
        <br>
        <div class="row" id="content">
            <div id="trendsearch">
                <table id="tablets" >
                    
                    <tr>
                        <td class="tdts" style="background-color:f2f2f2;font-size:20px;font-weight:bold;" >Trending searches    <br></td>
                    </tr>
                    
                    
                    <c:forEach var="searchDetails" items="${recentSearchList}" varStatus="loopCount">      
                        <tr><td class="tdts" ><a href="#${searchDetails.searchString}" class="tdlinkts" onclick="set('${searchDetails.searchString}')" >${searchDetails.searchString}</a></td></tr>                                           
                    </c:forEach>
                                
                    
                    
                </table><br>
            </div>
            <div id="movies">
                <c:if test="${not empty movieList}"><p id="moviestitle" > Movies</p></c:if> 
                <table cellspacing="30" id="moviesTableId">
                    <c:if test="${empty movieList}">
						<div class="srynoresults">
                         Sorry! No such movie found.       
						</div>
                    </c:if>
                    <c:forEach var="movieMaster" items="${movieList}" varStatus="loopCount">                        
                        <td class="tdm" style="margin-bottom:100px;">
                            <a class="movieslink" href="#${movieMaster.name}" onclick="set('${movieMaster.name}')">
                                <img class="movieimg" src="images/${movieMaster.moviePath}"></img>
                                <p><i class="fa fa-heart" aria-hidden="true"><font style="font-weight:bold;color:black;"> &nbsp ${movieMaster.rating}%</font></i> ${movieMaster.name}</p>
                                <p class="moviedetails">UA | ${movieMaster.genre} | ${movieMaster.language}</p>
                            </a>
                        </td>
                        <c:if test = "${ loopCount.count%3==0}">		
                            <tr> </tr>
                        </c:if>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div class="footer">
            <div ><br>
                <a class="footertext" href="#">Help / Contact</a>
                <a class="footertext" href="#">Movies by Genre</a>
                <a class="footertext" href="#">Download app</a>
                <a class="footertext" href="#">Privacy policy</a>
                </br>
            </div><br>
            <hr style="width:850px;opacity:0.4;height:2px;" color="#bfbfbf">
            <br>
            <a class="footericons" href="#"><i class="fa fa-lg fa-facebook-square" aria-hidden="true"></i></a>
            <a class="footericons" href="#"><i class="fa fa-lg fa-twitter" aria-hidden="true"></i></a>
            <a class="footericons" href="#"><i class="fa fa-lg fa-instagram" aria-hidden="true"></i></a>
            <a class="footericons" href="#"><i class="fa fa-lg fa-youtube-play" aria-hidden="true"></i></a>
            <div>

            </div>
            <br>

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
            function set(mname)
            {
				var mname = mname.replace(/ /g, "-");
				document.cookie = "mname="+mname;
				$(location).attr('href','movies');
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
    </body>
</HTML>