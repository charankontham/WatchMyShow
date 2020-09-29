<html>
    <head>
        <title>Register</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 	
		<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <style>
            body{
            background-repeat:no-repeat;
            background-size:100% 150%;
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
			margin-bottom:3%;
			text-align:center;
			}
			.sub{
			border-radius:17px;
			border:2px solid #000066;
			background-color:white;
			color:#000066;
			height:35px;
			width:80px;
			margin-bottom:2%;
			}
			.sub:hover{
			border:2px solid #000066;
			transition:0.3s;
			background-color:#000066;
			color:white;
			}
			#fieldset{
			margin-top:7%;
			width:550px;
			border-radius:15px;
			}
			#login{
			color:black;
			font-size:14px;
			font-family: 'Roboto', sans-serif;
			}
			#login:hover{
			font-weight:bold;
			text-shadow:0px 0px 20px #666666;
			}
			.exists{
				margin-top:0;
				color:red;
				font-size:16px;
				font-weight:bold;
				font-family:'Roboto',sans-serif;
				display:none;
			}
			@media screen and (max-width: 1366px)
			{
				#fieldset{
				margin-top:6%;
				width:500px;
				border-radius:10px;
				}
				#login{
				color:black;
				font-size:13px;
				font-family: 'Oswald', sans-serif;
				}
				#login:hover{
				font-weight:bold;
				text-shadow:0px 0px 20px black;
				}
			}
        </style>
    </head>
    <body background="images/limg.jpg">
        <div>
        <center>
			<form id="registerform" name="reg">
					<fieldset id="fieldset" style="border:2px solid #000066;">
						<legend><a href="home" id="home" ><p id="bmsimg">watch<b id="my">my</b>show</p></a></legend>
						<p class="exists">User already Exists</p>
						<div class="load" ><i class='fa fa-spinner fa-spin' style='font-size:50px;color:#002080'></i></div>
						<input type="textbox" class="tb" id="username" name="username" placeholder="Username" required>
						<input type="textbox" class="tb" id="mobile" name="mobile" placeholder="Mobile" required>
						<input type="email" class="tb" id="email" name="email" placeholder="Email" required>
						<input type="password" class="tb" id="password" name="password" placeholder="Password" required><br>
						<input type="submit" class="sub" id="register"><br>
						<a href="#login" id="login">Already have account?Sign in</a>
						<br>
					</fieldset>
			</form>
        </center>
		<script>		
			$(".load").hide();
			$(".exists").hide();
			
			
			$(document).ready(function(){
                    $('body').bind("cut copy paste",function(e) {
                        e.preventDefault();
                    });
					$('#registerform').click(function(event){
                        event.preventDefault();
                    });			
            });
			
			$("#register").click(function(){
				var mail = document.reg.email.value;  
				var atposition = mail.indexOf("@");  
				var dotposition = mail.lastIndexOf(".");
				if(document.reg.mobile.value.length <10 || document.reg.mobile.value.length >10 )
				{
					alert("Invalid Mobile number");		
				}
				else if(document.reg.password.value.length<8)
				{
					alert("Password should contain atleast 8 characters");
				}	  
				else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=mail.length)
				{  
					alert("Please enter a valid e-mail address"); 
				}  
				else{
						$(".exists").hide();
						$(".load").show();
						$.ajax({
							type:"GET",
							url:"register",
							data:{username:$("#username").val(),password:$("#password").val(),mobile:$("#mobile").val(),email:$("#email").val()},
							success:function(result) { 
								$(".load").hide();
								if(result=="exists"){
									$(".exists").show();
								}
								else if(result=="success")
								{
									window.location.href= "login.jsp";
								}
								else{
									alert(result);
								}
									
							}
						});
				}
				
			});
			$('#login').click(function(){
                window.location.href = "login.jsp";
            });
		</script>
        </div>
    </body>
</html>