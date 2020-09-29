<!Doctype>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<head>
		<title>login</title>
		<meta name="viewport" content="width=device-width" />
		<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
		<style>
            body{
			background-repeat:no-repeat;
			background-size:100% 110%;
			}
			
			#bmsimg{
			font-size:25px;
			font-family: 'Lilita One', cursive;
			color:#000066;
			text-decoration:none;
			}
			a{
			text-decoration:none;
			}
			#home{
			color:#000066;
			}
			#my{
			font-style:italic;
			padding-left:3px;
			padding-right:3px;
			border-radius:8px;
			color:white;
			background-color:#cc2900;
			}
			.tb{
			border-radius:20px;
			border:2px solid #737373;
			outline:none;
			box-shadow:0px 0px 10px #737373;
			height:40px;
			width:300px;
			text-align:center;
			}
			.sub{
			border-radius:18px;
			border:2px solid #000066;
			background-color:white;
			color:#000066;
			height:35px;
			margin-bottom:2%;
			width:80px;
			transition:0.4s;
			cursor:pointer;
			}
			.sub:hover{
			border:2px solid #000066;
			
			background-color:#000066;
			color:white;
			}
			#fieldset{
			margin-top:3%;
			border-radius:15px;
			width:450px;
			height:310px;
			}
			#register{
			color:black;
			font-family: 'Roboto', sans-serif;
			font-size:16px;
			transition:0.5s;
			}
			#register:hover{
			font-weight:bold;
			text-shadow:0px 0px 20px #666666;
			}
			.incorrect{
				margin-top:-10px;
				color:red;
				font-size:16px;
				font-weight:bold;
				font-family:'Roboto',sans-serif;
			}
			@media screen and (max-width: 1366px)
			{
				body{
				background-repeat:no-repeat;
				background-size:100% 125%;
				}
				#fieldset{
				border-radius:15px;
				width:350px;
				}
				#register:hover{
				font-weight:bold;
				text-shadow:0px 0px 20px #666666;
				}
				#register{
				color:black;
				font-family:'Roboto', sans-serif;
				font-size:15px;
				}
				.sub{
				border-radius:18px;
				border:2px solid #000066;
				background-color:white;
				color:#000066;
				height:35px;
				width:80px;
				}
				.load{
					display:none;
				}
			}
		</style>
	</head>
	<body background="images/limg.jpg">
		<div>
			<center>
				</br>
				<form name="login" id="loginform">
					<fieldset id="fieldset" style="border:2px solid #000066;">
						<legend><a href="home.html" id="home" ><p id="bmsimg">watch<b id="my">my</b>show</p></a></legend>
						<p class="incorrect" >Incorrect details</p>
						<div class="load" style="margin-bottom:3%;margin-top:-5%;"><i class='fa fa-spinner fa-spin' style='font-size:50px;color:#002080'></i></div>
						<input type="textbox" class="tb" id="username" name="username" placeholder="Username" ><br><br>
						<input type="password" class="tb" id="password" name="password" placeholder="Password" ><br><br>
						<input type="submit" class="sub" name="submit" value="Submit"><br><br>
				</form>
						<a href="#register" id="register">New User? Register Here</a><br><br>
					</fieldset>
				
			</center>
			<script>
				$(document).ready(function(){
                    $('body').bind("cut copy paste",function(e) {
                        e.preventDefault();
                    });
					$('#loginform').click(function(event){
                        event.preventDefault();
                    });
					$('#register').click(function(){
                        window.location.href = "register.jsp";
                    });
					
                });
				$(".load").hide();
				$(".incorrect").hide();
				$(".sub").click(function(){
					$(".incorrect").hide();
					if(document.login.username.value!="" ||  document.login.password.value!="")
					{
						$(".load").show();	
						$.ajax({
							type:"GET",
							url:"llogins",
							data:{username:$("#username").val(),password:$("#password").val()},
							success:function(result) { 
								$(".load").hide();
								if(result=="incorrect"){
									$(".incorrect").show();
								}
								else{
									window.location.href= "home";
								}
							}
						});	
					}
					else
					{
						alert("Enter all details");
					}
					
				});
			</script>
		</div>
	</body>
</html>