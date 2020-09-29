<!Doctype>
<HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<title>Payment</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" >
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
	<link href="https://fonts.googleapis.com/css?family=Courier+Prime&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
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
		height:80px;
		}
		#bmsimg{
		float:left;
		font-size:25px;
		margin-top:1.2%;
		font-family: 'Lilita One', cursive;
		margin-left:8%;
		}
		#my{
		font-style:italic;
		padding-left:3px;
		padding-right:3px;
		border-radius:8px;
		background-color:#cc2900;
		}
		#home{
		color:white;
		}
		#signinbtn{
		height:35px;
		width:90px;
		border-radius:15px;
		outline:none;
		border:none;
		float:right;
		margin:1.5% 5% 0% 0%;
		background-color:white;
		font-weight:bold;
		color:#000066;
		}
		#signinbtn:hover{
		border:2px solid white;
		background-color:#000066;
		color:white;
		transition: 0.3s;
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
		padding-top:1%;
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
		#navcon{
		float:right;
		margin-top:2%;
		margin-right:3%;
		color:#b3b3b3;
		font-size:13px;
		}
		#call{
		font-size:17px;
		color:#00ff00;
		}
		#os{
		width:25%;
		float:left;
		margin-left:3%;
		margin-top:1%;
		padding-left:2%;
		padding-right:2%;
		background-color:white;
		border-top-left-radius:30px;
		border-bottom-right-radius:30px;
		box-shadow:0px 0px 5px #a6a6a6;
		}
		#ostext{
		letter-spacing:0.3em;
		font-weight:bold;
		font-size:13px;
		padding-top:3%;
		}
		#tickets{
		margin-right:6%;
		float:right;
		margin-top:-4%;
		font-weight:bold;
		font-size:18px;
		}
		#ttext{
		margin-right:-7%;
		float:right;
		margin-top:2%;
		font-size:12px;
		color:#404040;
		}
		#mntext{
		font-size:15px;
		margin-top:-8%;
		padding-top:13%;
		}
		.mtypet{
		font-size:13px;
		color:#808080;
		}
		.seatsdt{
		font-size:17px;
		font-family: 'Courier Prime', monospace;
		margin-bottom:-10px;
		}
		.st{
		color:#808080;
		font-size:11px;
		margin-top:6%;
		}
		.strs{
		font-size:15px;
		margin-top:-8.5%;
		float:right;
		}
		#icrs{
		font-size:13px;
		}
		#amt{
		background-color:#99e6ff;
		padding:3%;
		border-top-left-radius:10px;
		border-bottom-right-radius:10px;
		font-weight:bold;
		}
		#amtrs{
		float:right;
		margin-top:-13%;
		padding-right:3%;
		font-weight:bold;
		}
		#paym{
		width:67%;
		float:left;
		margin-left:3%;
		}
		#paymtext{
		background-color:#99e6ff;
		padding:1%;
		border:1px solid black;
		border-radius:5px;
		}
		.link{
		width:270px;
		height:70px;
		border:none;
		cursor:pointer;
		outline:none;
		background-color:white;
		border-radius:10px;
		box-shadow:0px 0px 10px #737373;
		}
		#options{
		width:20%;
		float:left;
		}
		.content{
		width:60%;
		margin-left:20%;
		margin-top:0%;
		float:left;
		}
		.ctext{
		font-size:20px;
		font-weight:bold;
		margin-left:12%;
		}
		#op1,#op2,#op3,#op4,#op5{
		display:none;
		}
		#cdcards{
		background-color:white;
		height:220px;
		border-radius:10px;
		width:390px;
		margin-bottom:2%;
		box-shadow:0px 0px 5px #a6a6a6;
		}
		#cntext{
		color:#8c8c8c;
		font-size:13px;
		padding:5% 0% 1% 5%;
		}
		.tb{
		border:1px solid black;
		margin:0% 0% 4% 5%;
		height:30px;
		width:300px;
		padding-left:10px;
		border-radius:5px;
		outline:none;
		}
		#exptext{
		color:#8c8c8c;
		font-size:13px;
		margin:-1% 0% 2% 5%;
		}
		#mm{
		float:left;
		padding-left:10px;
		border:1px solid black;
		margin-left:5%;
		outline:none;
		width:50px;
		height:30px;
		border-radius:5px;
		text-align:center;
		}
		#yy{
		float:left;
		padding-left:10px;
		outline:none;
		margin-left:1%;
		width:50px;
		height:30px;
		border-radius:5px;
		border:1px solid black;
		text-align:center;
		}
		#cvvtext{
		float:left;
		margin-left:24%;
		margin-top:-5%;
		font-size:13px;
		color:#8c8c8c;
		}
		#cvv{
		margin-left:-7%;
		border-radius:5px;
		height:30px;
		text-align:center;
		width:100px;
		border:1px solid black;
		outline:none;
		}
		#mp{
		height:40px;
		width:390px;
		border:none;
		background-color:#000066;
		color:white;
		outline:none;
		border-radius:5px;
		}
		#mp:hover{
		background-color:white;
		color:#000066;
		transition:0.5s;
		font-size:20px;
		cursor:pointer;
		font-weight:bold;
		border:2px solid #000066;
		}
		.ni{
		height:30px;
		width:250px;
		text-align:center;
		margin-left:7%;
		margin-bottom:3%;
		outline:none;
		border-radius:5px;
		border:1px solid black;
		}
		#op4{
		font-size:18px;
		}
		.wop{
		margin-left:20%;
		margin-bottom:3%;
		}
		#opp{
		font-size:30px;
		font-weight:bold;
		color:#b3b3b3;
		margin-left:-3%;
		margin-top:20%;
		}
		#nttext{
		color:#8c8c8c;
		margin-left:10%;
		font-weight:bold;
		float:left;
		}
		#note{
		color:#8c8c8c;
		
		margin-left:10%;
		}
		#conttext{
		color:#8c8c8c;
		margin-left:10%;
		font-size:13px;
		}
		#email{
		color:#8c8c8c;
		margin-left:76%;
		margin-top:-4.5%;
		}
		.fa-phone{
		font-weight:bold;
		color:#009900;
		}
		#seat1{
		display:none;
		}
		#seat2{
		display:none;
		}
		#seat3{
		display:none;
		}
	</style>
</head>
<body bgcolor="f2f2f2" style="font-family:Roboto,sans-serif;">
	<div id="bms">
			<a href="home" id="home" ><p id="bmsimg">watch<b id="my">my</b>show</p></a>
			<button id="signinbtn" onclick="login()" name="signin" >Sign in</button>
			<div id="t">
				<a id="acc" name="account" onclick="outtoggle()"> <i class="fa fa-user-circle" style="color:white;font-size:40px;height:50px;width:50px;border-radius:50%;" aria-hidden="true"></i></a>
				<div class="outdiv">
					<button class="outbtn hidec" id="outbtn" onclick="out()">SignOut</button>
				</div>
			</div>
	</div><br>
	<div >
		<div id="os" >
			<p id="ostext" >ORDER SUMMARY</p>
			<p id="tickets" >${noftickets}</p>
			<p id="ttext" >Tickets</p>
			<p id="mntext" >${mname} (U/A)</p>
			<p class="mtypet" >${language} 2D</p>
			<p class="mtypet" id="tname">${tname}</p> <br>
			<p class="seatsdt" id="seat1"></p>
			<p class="seatsdt" id="seat2"></p>
			<p class="seatsdt" id="seat3"></p>
			<p class="seatsdt" id="datetime">${dt} April 2020</p>
			<p class="seatsdt" id="timing">${mtime}</p><br>
			<hr id="oshr" >
			<p class="st" >Sub Total</p>
			<p class="strs" id="price">Rs.${totalamount}.00</p>
			<p class="st" >+internet handling charges</p>
			<p class="strs" id="icrs" >Rs.30.62</p>
			<p id="amt" >Amount payable</p>
			<p id="amtrs" ></p>
		</div>
		<script>
			document.getElementById("amtrs").innerHTML = "Rs." + (parseFloat(localStorage.getItem("totalamount")) + 30.62);
			//document.getElementById("datetime").innerHTML = localStorage.getItem("dt") + " 2020";
			var tp,tpp,tppp,st,j1,j2,j3,innerhtmldata;
			tp = tpp = tppp = j1 = j2 = j3 = 0;
			for(var i=0;i<localStorage.getItem("noftickets");i++)
			{
				st = localStorage.getItem("seat"+i);
				st= st.charAt(0);
				if(st=="A"||st=="B"||st=="C"||st=="D"||st=="E")
				{
					$("#seat1").show();
					if(tp==0)
					{
						document.getElementById("seat1").innerHTML = "Platinum - ";
						tp = 1;
					}
					innerhtmldata = document.getElementById("seat1").innerHTML;
					if(j1==1){
					document.getElementById("seat1").innerHTML = innerhtmldata + "," + localStorage.getItem("seat"+i);
					}
					else{
					document.getElementById("seat1").innerHTML = innerhtmldata + localStorage.getItem("seat"+i);
					}
					j1 = 1;
				}
				else if(st=="F"||st=="G"||st=="H"||st=="I"||st=="J"||st=="K"||st=="L")
				{
					$("#seat2").show();
					if(tpp==0)
					{
						document.getElementById("seat2").innerHTML = "Gold - ";
						tpp = 1;
					}
					innerhtmldata = document.getElementById("seat2").innerHTML;
					if(j2==1){
					document.getElementById("seat2").innerHTML = innerhtmldata + "," + localStorage.getItem("seat"+i);
					}
					else{
					document.getElementById("seat2").innerHTML = innerhtmldata + localStorage.getItem("seat"+i);
					}
					j2 = 1;
				}
				else
				{
					$("#seat3").show();
					if(tppp==0)
					{
						document.getElementById("seat3").innerHTML = "Silver - ";
						tppp = 1;
					}
					innerhtmldata = document.getElementById("seat3").innerHTML;
					if(j3==1){
					document.getElementById("seat3").innerHTML = innerhtmldata + "," + localStorage.getItem("seat"+i);
					}
					else{
					document.getElementById("seat3").innerHTML = innerhtmldata + localStorage.getItem("seat"+i);
					}
					j3 = 1;
				}
				
			}
				
		</script>
		<div id="paym" >
			<p id="paymtext" >Payment Options</p>
			<div id="options">
					<button onclick="show('op1')" class="link" >Credit/Debit Card</button><br>
					<button onclick="show('op2')" class="link" >Net Banking</button><br>
					<button onclick="show('op3')" class="link" >UPI</button><br>
					<button onclick="show('op4')" class="link" >Mobile Wallets</button><br>
					<button onclick="show('op5')" class="link" >Redeem Voucher</button><br>
			</div>	
			<div class="content" >
			<form  name="payment" action="bookings" method="post" onsubmit="return checkdetails()">
				<p id="opp" class="op">Select any payment Method to continue</p>
				<div id="op1" class="op">
					<p class="ctext">Enter your Card details</p>
					<div id="cdcards">
						<p id="cntext">Card Number</p>
						<input type="text" class="tb" name="cdcardnumber" placeholder="Enter Your Card Number" ><br>
						<input type="text" class="tb" name="cdcardname" placeholder="Name on the Card" >
						<p id="exptext">Expiry</p>
						<input type="text" id="mm" name="mm" placeholder="MM" >
						<input type="text" id="yy" name="yy" placeholder="YY" >
						<p id="cvvtext" >CVV</p>
						<input type="text" id="cvv" name="cvv" placeholder="CVV" >
					</div>
					<button type="submit"  id="mp" class="cd" name="mpbtn">MAKE PAYMENT</button>
				</div>
				<div id="op2" class="op">
					<p class="ctext" style="margin-left:10%;">Pay using Netbanking</p>
					<input type="text" class="ni" name="bname" placeholder="Bank name" ><br>
					<input type="text" class="ni" name="acname" placeholder="Account Holder name" ><br>
					<input type="text" class="ni" name="acn" placeholder="Account number" ><br>
					<input type="text" class="ni" name="ifsc" placeholder="IFSC Code" ><br>
					<input type="submit"  id="mp" class="netb" value="MAKE PAYMENT"><br>
				</div>
				<div id="op3" class="op">
					<p class="ctext" style="margin-left:25%;">Pay using UPI</p>
					<input type="text" class="ni" name="upiname" placeholder="ex:sbi123" > @ 
					<input type="text" class="ni" name="upibname" style="margin-left:1%;width:100px;" placeholder="Bank name" >
					<input type="submit"  id="mp" class="upi" style="margin-left:7%;" value="MAKE PAYMENT"><br>
				</div>
				<div id="op4" class="op">
					<p class="ctext" >Pay using mobile Wallet</p>
					<input type="radio" class="wop" name="wallet" >Amazon pay<br>
					<input type="radio" class="wop" name="wallet" >Paytm<br>
					<input type="radio" class="wop" name="wallet" >Phone pe<br>
					<input type="radio" class="wop" name="wallet" >Mobiwik<br>
					<input type="radio" class="wop" name="wallet" >Paypal<br><br>
					<input type="submit"  id="mp"  class="wallet" value="MAKE PAYMENT"><br>
				</div>	
				<div id="op5" class="op">
					<p class="ctext" style="margin-left:6%;">Pay using Redeem Vouchers</p><br>
					<input type="text" name="redeemv" class="ni" style="width:300px;" placeholder="Enter GV Code to redeem" ><br><br>
					<input type="submit"  id="mp" class="gvh" value="REDEEM"><br>
				</div>
			</form>
			</div>
		</div>
		<br>
	</div>
	<div>
		<br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <br>
		<br>
		<hr style="background-color:#00264d;width:80%;height:0.3%;">
		<br>
		<p id="nttext">Note : </p>
		<p id="note"> &nbsp Don't press the back button or refresh the page while payment is processing</p>
		<p id="conttext" ><i class="fa fa-phone" aria-hidden="true"></i> &nbsp 044 4043 5050, 044 6654 5050</p>
		<p id="email" >mail : watchmyshow@filmy.com</p>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	<script>
	function checkdetails()
	{
		alert("PAYMENT SUCCESSFULL");
		return true;
		/* var checktf = 0;
		$(".gvh").click(function(){
			alert("redeem");
			if(document.payment.redeemv.value!=" ")
			{
				alert("h");
				checktf = true;
			}
				
		});
		$(".cd").click(function()
		{
			var cdnumb = document.payment.cdcardnumber.value;
			var cdname = document.payment.cdcardname.value;
			var mm = document.payment.mm.value.length;
			var yy = document.payment.yy.value.length;
			var cvv = document.payment.cvv.value.length;
			if(cdnumb!="" && cdname!="" && mm==2 && yy==2 && cvv==3)
			{
				checktf = true;
			}
				
		});
		$(".netb").click(function()
		{
			var bname = document.payment.bname.value;
			var acn = document.payment.acn.value;
			var ifsc = document.payment.ifsc.value;
			var acname = document.payment.acname.value;
			if(bname!="" && acn!="" && ifsc!="" && acname!="")
			{
				checktf = true;
			}
				
		});
		$(".upi").click(function()
		{
			var upibname = document.payment.upibname.value;
			var upiname = document.payment.upiname.value;
			if(upibname!="" && upiname!="")
			{
				checktf = 1;
			}
				
		});
		$(".wallet").click(function()
		{
			var radios = document.getElementsByName("wallet");
			for(var i=0;i<radios.length;i++)
			{
				if(radios[i].checked)
				{
					checktf = 1;
				}
			}
		});
		alert(checktf);
		if(checktf==1)
		{
			alert("PAYMENT SUCESSFULL");
			return true;
		}
		else
		{
			alert("Enter all details...");
			return false;
		} */
	}
			if(getCookie("usern") != "no")
				{
					//alert("User already exists");
					$('#signinbtn').hide();
					$('#t').show();
				}
				else
				{
					$('#t').hide();//alert("User Not exists");
				}
			function out()
			{
				document.cookie = "usern=no";
				$(location).attr('href','home');
			}
			function outtoggle()
			{
				$('#outbtn').toggleClass("hidec");
			}
			function login()
            {
                window.location.href = "login.html";
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
	function show(s)
	{
	
		for(var i=0;i<6;i++)
		{
			var k= document.getElementsByClassName("op")[i].id;
			if(k!=s)
			{
				document.getElementById(k).style.display = "none";
			}
			else
			{
				document.getElementById(s).style.display = "block";
			}
		}
	}
	function pay()
	{
		alert("PAYMENT SUCESSFULL ");
		$(location).attr('href','bookings');
	}
	</script>
</body>
</html>
	