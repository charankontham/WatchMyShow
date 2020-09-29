<!Doctype>
<html>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="movies.css"> 
		<link rel="stylesheet" type="text/css" href="button.css">
		<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
        <title>information...</title>
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
						<option value="3">karimnagar</option>
						<option value="4">nizamabad</option>
						<option value="5">kurnool</option>
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
        <div class="banner" style="background-image: url(images/blur.jpg);">
            <img src="images/${img}"></img>
            <div class="temp">
                <h1 style="font-size: 30px;">${mname}</h1>
                <p style="font-size:16px;">${language}</p>
                <p style="font-size:16px;">${genre}</p>
                <p style="font-size:16px;">${releasedate}  ${duration}</p>
			</div>
        </div>
        <div class="hearts">
                <i class="fa fa-heart" style="font-size:30px;color:rgb(201,54,60);padding-left: 290px;padding-top: 16px;">&nbsp${rating}%</i>
                <b style="margin-left:100px;">4.0</b>
                <i class="fa fa-heart" style="font-size:15px;color:rgb(201,54,60);margin-left:1px;"></i>
                <i class="fa fa-heart" style="font-size:15px;color:rgb(201,54,60);"></i>
                <i class="fa fa-heart" style="font-size:15px;color:rgb(201,54,60);"></i>
                <i class="fa fa-heart" style="font-size:15px;color:rgb(201,54,60);"></i>
                <i class="fa fa-heart" style="font-size:15px;color:#d9d9d9;"></i>
                <blockquote style="padding-left:450px;margin-top:0px;color:#8c8c8c;">users rating...</blockquote>
                <button class="bt" onclick="booktickets()">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					Book Tickets
				</button>
        </div>
		<button onclick="summary()" class="srbtn" id="s">Summary</button>
		<button onclick="review()" class="srbtn" id="r">User Reviews</button>
        <div id="info">
            <div id="sum">
                <p style="font-weight:bold;">SYNOPSIS</p>    
                Raghu Ramayya is nearing the end of his days, but his three sons and one daughter struggle to find the time to be with him. That is when Sai, Raghu`s grandson, decides to help him celebrate the rest of his life and maybe even bring the family together before his time comes.
                <br />
                <p>CAST</p>
                
                <div class="slider">
                        <img src="images/avatar.jpg" class="slider-image" />
                        <img src="images/avatar.jpg" class="slider-image" />
                        <img src="images/avatar.jpg" class="slider-image" />
                        <img src="images/avatar.jpg" class="slider-image" />
                        <img src="images/avatar.jpg" class="slider-image" />
                </div>
				<div class="slider1">
					<P class="slider-padding" >${cast1}</p>
					<P class="slider-padding" >${cast2}</p>
					<P class="slider-padding" >${cast3}</p>
					<P class="slider-padding" >${cast4}</p>
					<P class="slider-padding" >${cast5}</p>
				</div>
                <br>
                <p>CREW</p>
               
                <div class="slider">

                    <img src="images/avatar.jpg" class="slider-image" />
                    <img src="images/avatar.jpg" class="slider-image" />
					<img src="images/avatar.jpg" class="slider-image" />
                    <img src="images/avatar.jpg" class="slider-image" />
                    <img src="images/avatar.jpg" class="slider-image" />
                   
                </div>
				<div class="slider1">
					<p class="slider-padding" >${crew1}</p>
					<p class="slider-padding" >${crew2}</p>
					<p class="slider-padding" >${crew3}</p>
					<p class="slider-padding" >${crew4}</p>
					<p class="slider-padding" >${crew5}</p>
				</div>
                <br>
            </div>
			
            <div id="rev">
                <div class="review1">
                    <i class="fa fa-user fa-5x" aria-hidden="true" ></i>
                    <div class="rev">
                        <p style="font-weight:bold;">lucky</p>
                        <p style="font-size:14px;">
							SDT Acting Maruti taking Screen play is superb complete movie is good in recent times no movie has come with family entertainment and emotions good movie for watching with family
                        </p>
                    </div>
                </div>
				<hr class="revhr">
				<div class="review1">
                    <i class="fa fa-user fa-5x" aria-hidden="true" ></i>
                    <div class="rev"> 
                        <p style="font-weight:bold;">charan</p>
                        <p style="font-size:14px;">
							SDT Acting Maruti taking Screen play is superb complete movie is good in recent times no movie has come with family entertainment and emotions good movie for watching with family
                        </p>
                    </div>
                </div>
				<hr class="revhr">
				<div class="review1">
                    <i class="fa fa-user fa-5x" aria-hidden="true" ></i> 
                    <div class="rev">
                        <p style="font-weight:bold;">Anil</p>
                        <p style="font-size:14px;">
							SDT Acting Maruti taking Screen play is superb complete movie is good in recent times no movie has come with family entertainment and emotions good movie for watching with family
                        </p><br><br>
                    </div>
                </div>
				<br>
            </div>
        </div>
        <div class="footer">
            <div><br>
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
            <br><br>
        </div>
		<script>
			if (getCookie("usern") != "no")
            {
                $('#t').show();
                $('#signinbtn').hide();
            }
			function outtoggle()
			{
				$('#outbtn').toggleClass("hidec");
			}
			function out()
			{
				document.cookie = "usern=no";
				$(location).attr('href','movies');
			}
			function summary(){
				document.getElementById("rev").style.display="none";
				document.getElementById("sum").style.display="block";
				document.getElementById("r").style.background ="#f2f2f2";
				document.getElementById("s").style.background ="white";
			}
			function review(){
				document.getElementById("sum").style.display="none";
				document.getElementById("rev").style.display="block";
				document.getElementById("s").style.background = "#f2f2f2";
				document.getElementById("r").style.background ="white";
			}
			function booktickets()
			{
				//alert("");
				if(getCookie("usern")!="no")
				{
					$(location).attr('href','booktickets');
				}
				else
				{
					alert("You must login to book tickets");
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
			function login()
			{
				window.location.href = "login.jsp";
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
</html>