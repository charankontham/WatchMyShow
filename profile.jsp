<!Doctype>
<HTML>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<head>
	<title>Profile</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta charset="utf-8"> 
	<link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
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
		height:100px;
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
		margin-top:-5%;
		}
		#navbar{
		background-color:#00134d;
		margin-top:-1.1%;
		text-align:center;
		padding:0.7%;
		margin-left:-4%;
		}
		.navelement{
		margin-left:3%;
		font-size:17px;
		color:#d9d9d9;
		padding:0.5%;
		}
		.navelement:hover{
		color:white;
		}
		#profile{
		background-color:#d9d9d9;
		width:700px;
		margin-left:26.5%;
		margin-top:1.7%;
		border-radius:30px;
		box-shadow:2px 2px 20px 1px #bfbfbf;
		border:2px solid black;
		height:375px;
		}
		#heading{
		text-align:center;
		font-family: 'Roboto Mono', monospace;
		letter-spacing:0.6em;
		padding:10px;
		text-shadow:2px 2px 5px #808080;
		}
		#gen{
		float:right;
		}
		.txt{
		font-family: 'Alatsi', sans-serif;
		font-size:20px;
		font-weight:bold;
		}
		#submit{
		background-color:#00134d;
		color:white;
		height:40px;
		width:80px;
		border-radius:20px;
		outline:none;
		transition:0.5s;
		border:2px solid white;
		}
		#submit:hover{
		color:#00134d;
		font-weight:bold;
		background-color:white;
		border:2px solid #00134d;
		}
		.footer{
		background-color:#00134d;
		text-align:center;
		margin-top:3.8%;
		}
		#ftext{
		padding:0.3%;
		}
		.footertext{
		color:#bfbfbf;
		margin-right:6%;
		}
		.footertext:hover{
		color:white;
		}
		.footericons{
		margin-right:2.5%;
		border-radius:50%;
		border:1px solid #999999;
		color:999999;
		padding:7px;	
		}
		input[type=text]{
		display:none;
		border-radius:5px;
		outline:none;
		border:none;
		padding:2%;
		text-align:center;
		width:250px;
		box-shadow:0px 0px 10px 0px #8c8c8c;
		}
		input[type=email]{
		display:none;
		border-radius:5px;
		outline:none;
		border:none;
		padding:2%;
		width:250px;
		text-align:center;
		box-shadow:0px 0px 10px 0px #8c8c8c;
		}
		.outdiv{
		//margin-left:3%;
		//border-radius:50%;
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
		@media screen and (max-width: 1366px)
		{
			#location{
			margin-left:20%;
			font-size:17px;
			color: #d9d9d9;
			border:none;
			background-color:#000066;
			outline:none;
			border-radius:15px;
			}
			#location:hover{
			color:white;
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
	<div id="bms">
		<a href="home.html" id="home" ><p id="bmsimg">watch<b id="my">my</b>show</p></a>
		<form class="frm" method="post"  id="searchDetailsFormId">
			<input type="textbox" id="srch"  name="search" placeholder="Search  for  Movies  Theatres  Places  Events " />
			<button id="srchbtn" onclick="saveSearchDetails(this)"><i class="fa fa-search" id="search" aria-hidden="true"></i></button>	
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
		<a href="profile"  class="navelement" ><i class="fa fa-cogs" aria-hidden="true"></i> Profile</a>
	</div>
	<br>
	<div id="profile" align="center">
		<form name="prof" action="profileEdit" method="get" onsubmit="return checkdetails()">
		<h1 id="heading">Profile</h1>
		<table id="profiletable" align="center" cellpadding="12">
			<tr>
				<td>
					<label  class="txt" style="float:left;"> Name : &nbsp </label><p class="txt" name="oname">${name}</p>
				</td>
				<td id="nm">
					<a href="#" onclick="edit(this.id,'name')" id="ename" style="font-size:13px;">Edit</a><input type="text"  id="name" name="nname" placeholder="New name">
				</td>
			</tr>
			<tr>
				<td>
					<p class="txt" name="phone">Phone : &nbsp  ${phone} </p>
				</td>
				<td>
					<a href="#" onclick="edit(this.id,'phone')" id="ephone"style="font-size:13px;">Edit</a><input type="text"  id="phone" name="nphone" placeholder="New phone">
				</td>
			</tr>
			<tr>
				<td>
					<p class="txt" name="email">Email : &nbsp  ${email} </p>
				</td>
				<td>
					<a href="#" onclick="edit(this.id,'email')" id="eemail" style="font-size:13px;">Edit</a><input type="email" id="email" name="nemail" placeholder="New email" >
				</td>
			</tr>
			<tr>
				<td>
					<label  class="txt" style="float:left;">Password : &nbsp  </label><p class="txt" id="pass1" name="password">${password} </p>
				</td>
				<td>
					<a href="#" onclick="edit(this.id,'pass')" id="epass" style="font-size:13px;">Edit</a><input type="text" id="pass" name="npassword" placeholder="New password">
				</td>
			</tr>
		</table><br>
		<input type="submit" id="submit" value="Submit" name="submit">
		<br>
		<br>
		</form>
	</div>
	<div class="footer">
		<div id="ftext"><br>
			<a class="footertext" href="#">Help / Contact</a>
			<a class="footertext" href="#">Movies by Genre</a>
			<a class="footertext" href="#">Download app</a>
			<a class="footertext" href="#">Privacy policy</a>
		</div>
		<hr style="width:850px;opacity:0.4;height:2px;" color="#bfbfbf">
		<br>
		<a class="footericons" href="#"><i class="fa fa-lg fa-facebook-square" aria-hidden="true"></i></a>
		<a class="footericons" href="#"><i class="fa fa-lg fa-twitter" aria-hidden="true"></i></a>
		<a class="footericons" href="#"><i class="fa fa-lg fa-instagram" aria-hidden="true"></i></a>
		<a class="footericons" href="#"><i class="fa fa-lg fa-youtube-play" aria-hidden="true"></i></a>
		<br><br>
	</div>
	<script>
			$("#pass1").css('cursor','pointer');
			var password = $("#pass1").html();
			var password1 = password.replace( /./g, '*' );
			$("#pass1").html(password1);
			$("#pass1").click(function(){
				//alert();
				if($("#pass1").html()==password){
				$("#pass1").html(password1);
				}
				else{
					$("#pass1").html(password);
				}
			})
			function checkdetails()
			{
				var ch = false;
				var mail = document.prof.nemail.value;  
				var atposition = mail.indexOf("@");  
				var dotposition = mail.lastIndexOf(".");
				if(document.prof.nphone.value!="")
				{
					if(document.prof.nphone.value.length<10 || document.prof.nphone.value.length>10 )
					{
						alert("Invalid Mobile number");
						return false;
					}
					ch=true;
				}
				if(document.prof.npassword.value!="")
				{
					if(document.prof.npassword.value.length<8)
					{
						alert("Password should contain atleast 8 characters");
						return false;
					}
					ch=true;
				}
				if(document.prof.nemail.value!="")
				{
					if (atposition<1 || dotposition<atposition+2 || dotposition+2>=mail.length)
					{  
						alert("Please enter a valid e-mail address");  
						return false;  
					}  
					ch=true;
				}
				if(document.prof.nname.value!="")
				{
					if (document.prof.nname.value == document.getElementsByName("oname")[0].innerHTML)
					{  
						alert("Please don't use old name !");
						return false;  
					}  
					ch=true;
				}
				if(ch==true)
				{
					return true;
				}
				else
				{
					alert("No changes made !");
					return false;
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
		function edit(btn1,btn2)
		{
			//alert("h");
			document.getElementById(btn1).style.display="none";
			document.getElementById(btn2).style.display="block";
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
 	</script>
</body>
</html>