<!Doctype>
<HTML>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<title>Seating</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/button.css" type="text/css" media="all">
	<script src="js/jquery-2.2.3.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	<script>
		$('.cinema-seats .seat').on('click', function() {
		$(this).toggleClass('active');
		});
	</script>
	<style>
		#back{
		float:left;
		color:white;
		margin:1% 2% 0% 1%;
		}
		#header{
		background-color:#00134d;
		padding-top:1%;
		}
		#tickets{
		float:right;
		background-color:#00134d;
		color:white;
		margin-top:-2%;
		width:90px;
		font-size:18px;
		border:none;
		margin-right:2%;
		outline:none;
		}
		#moviename{
		color:white;
		font-size:23px;
		}
		#theatre{
		color:d9d9d9;
		font-size:13px;
		}
		 
		.footer{
		background-color:f2f2f2;
		box-shadow:3px 10px 10px 10px black;
		padding:1%;
		display:none;
		}
		#payamount{
		text-align:center;
		}
		#pay{
		background-color:#4d4dff;
		border-radius:10px;
		padding:1%;
		color:white;
		}
		#pay{
		outline:none;
		}
		.let{
		font-weight:bold;
		color:#000066;
		font-size:18px;
		}
		
	</style>
</head>
<body onload="onLoaderFunc()">
	<div id="header">
		<a href="booktickets" id="back"  ><i class="fa fa-lg fa-arrow-left" aria-hidden="true"></i></a>
		<p id="moviename">${mname}</p>
		<p id="theatre" >${tname}</p>
		<!--<script>
			document.getElementById("theatre").innerHTML = localStorage.getItem("tname");
			document.getElementById("moviename").innerHTML = localStorage.getItem("mname");
		</script>-->
		<form class="inputForm">
		<select id="tickets" name="numtickets">
			<option value="1">1 Ticket</option>
			<option value="2">2 Ticket</option>
			<option value="3">3 Ticket</option>
			<option value="4">4 Ticket</option>
			<option value="5">5 Ticket</option>
			<option value="6">6 Ticket</option>
		</select>
		</form>
		<br>
	</div>
	<br><br>
    <div class="container">
        <div class="w3ls-reg">
            <!-- seat availabilty list -->
            <ul class="seat_w3ls">
                <li class="smallBox greenBox" style="color:#000066;">Selected Seat</li>
                <li class="smallBox redBox" style="color:#000066;" >Reserved Seat</li>
                <li class="smallBox emptyBox" style="color:#000066;" >Empty Seat</li>
            </ul>
            <!-- seat availabilty list -->
            <!-- seat layout -->
            <div class="seatStructure txt-center" style="overflow-x:auto;">
                <table id="seatsBlock">
                    <tr>
                        <td class="let" ></td>
                        <td class="let" >1</td>
                        <td class="let" >2</td>
                        <td class="let" >3</td>
                        <td class="let" >4</td>
                        <td class="let" >5</td>
                        <td class="let"></td>
                        <td class="let" >6</td>
                        <td class="let" >7</td>
                        <td class="let" >8</td>
                        <td class="let" >9</td>
                        <td class="let" >10</td>
                        <td class="let" >11</td>
                        <td class="let" >12</td>
						<td class="let" ></td>
						<td class="let" >13</td>
						<td class="let" >14</td>
						<td class="let" >15</td>
						<td class="let" >16</td>
						<td class="let" >17</td>
                    </tr>
					<tr class="seatVGap">
						<td colspan="20" >
							<hr>
							<h4 style="color:black;">Platinum - Rs.150</h4>
						</td>
					</tr>
                    <tr>
                        <td class="let" >A</td>
                        <td>
                            <input type="checkbox" class="seats" value="A1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="A3" disabled >
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="A5" disabled>
                        </td>
                        <td class="seatGap"></td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="A6" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="A7" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="A8" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="A9" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="A10" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="A13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="A17">
                        </td>
						
					</tr>

                    <tr>
                        <td class="let" >B</td>
                        <td>
                            <input type="checkbox" class="seats" value="B1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="B6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="B7" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="B9" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="B13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="B17">
                        </td>
                    </tr>

                    <tr>
                        <td class="let" >C</td>
                        <td>
                            <input type="checkbox" class="seats" value="C1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="C6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="C13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="C16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="C17" disabled>
                        </td>
                    </tr>

                    <tr>
                        <td class="let" >D</td>
                        <td>
                            <input type="checkbox" class="seats" value="D1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="D6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="D13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="D17">
                        </td>
                    </tr>

                    <tr>
                        <td class="let" >E</td>
                        <td>
                            <input type="checkbox" class="seats" value="E1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="E6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="E11" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="E13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="E17">
                        </td>
                    </tr>

                    <tr class="seatVGap">
						<td colspan="20" >
							<hr>
							<h4 style="color:black;">Gold - Rs.80</h4>
						</td>
					</tr>
					
                    <tr>
                        <td class="let" >F</td>
                        <td>
                            <input type="checkbox" class="seats" value="F1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="F6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="F9" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="F13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F15" id="res" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="F17">
                        </td>
                    </tr>

                    <tr>
                        <td class="let" >G</td>
                        <td>
                            <input type="checkbox" class="seats" value="G1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G3" id="res" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G4" id="res" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="G6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G7" id="res" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G12" id="res" disabled>
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="G13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="G17">
                        </td>
                    </tr>

                    <tr>
                        <td class="let" >H</td>
                        <td>
                            <input type="checkbox" class="seats" value="H1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="H6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="H13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="H17">
                        </td>
                    </tr>

                    <tr>
                        <td class="let">I</td>
                        <td>
                            <input type="checkbox" class="seats" value="I1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="I6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="I13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="I17">
                        </td>
                    </tr>

                    <tr>
                        <td class="let" >J</td>
                        <td>
                            <input type="checkbox" class="seats" value="J1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="J6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="J13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J15" id="res" disabled >
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J16" id="res" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="J17" id="res" disabled>
                        </td>
                    </tr>
					<tr>
                        <td class="let" >K</td>
                        <td>
                            <input type="checkbox" class="seats" value="K1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="K6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="K13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="K17">
                        </td>
                    </tr>
					<tr>
                        <td class="let" >L</td>
                        <td>
                            <input type="checkbox" class="seats" value="L1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="L6" id="res" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L7" id="res" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="L13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="L17">
                        </td>
                    </tr>
					<tr class="seatVGap">
						<td colspan="20" >
							<hr>
							<h4 style="color:black;">Silver - Rs.50</h4>
						</td>
					</tr>
					<tr>
                        <td class="let" >M</td>
                        <td>
                            <input type="checkbox" class="seats" value="M1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="M6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="M13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="M17" id="res" disabled>
                        </td>
                    </tr>
					<tr>
                        <td class="let" >N</td>
                        <td>
                            <input type="checkbox" class="seats" value="N1">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" value="N6">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N7">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N8">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="N13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="N17">
                        </td>
                    </tr>
					<tr>
                        <td class="let" >O</td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="O1" disabled >  
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O2">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O3">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O4">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O5">
                        </td>
                        <td></td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="O6" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="O7" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" id="res" value="O8" disabled>
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O9">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O10">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O11">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O12">
                        </td>
						<td class="seatGap"></td>
						<td>
                            <input type="checkbox" class="seats" value="O13">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O14">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O15">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O16">
                        </td>
                        <td>
                            <input type="checkbox" class="seats" value="O17">
                        </td>
                    </tr>
                </table>

                <div class="screen">
                    <h2 class="wthree">Screen this way</h2>
                </div>
                <button class="bt" onclick="updateTextArea()" id="confirm">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					Confirm Selection
				</button>
            </div>
			<br>
            <!-- //seat layout -->
            <!-- details after booking displayed here -->
            <div class="displayerBoxes txt-center" style="float:center;">
                <table align="center" class="Displaytable w3ls-table" width="100%">
                    <tr>
                        <th>Number of Seats</th>
                        <th>Seats</th>
                    </tr>
                    <tr>
                        <td>
                            <textarea id="NumberDisplay"></textarea>
                        </td>
                        <td>
                            <textarea id="seatsDisplay"></textarea>
                        </td>
                    </tr>
                </table>
            </div>
            <!-- //details after booking displayed here -->
        </div>
	</div>
	<br>
    <!-- js -->
    <script src="jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- script for seat selection -->
    <script>
	window.addEventListener( "pageshow", function ( event ) {
  var historyTraversal = event.persisted || 
                         ( typeof window.performance != "undefined" && 
                              window.performance.navigation.type === 2 );
  if ( historyTraversal ) {
    // Handle page restore.
    window.location.reload();
  }
});
        function onLoaderFunc() {
            $(".seatStructure").prop("disabled", false);
            $(".displayerBoxes").prop("disabled", false);
        }
		
         if ($("#tickets").val() == 0) 
		 {
            alert("Book atleast 1 ticket for further selection");
         }
		 else
		 {
            $(".seatStructure").prop("disabled", false);
         }
		$(":checkbox").click(function () {
            if ($("input:checked").length == ($("#tickets").val())) {
                $(":checkbox").prop('disabled', true);
                $(':checked').prop('disabled', false);
            } else {
                $(":checkbox").prop('disabled', false);
            }
        });
		
		$("#tickets").change(function(){
		$(":checkbox").prop('disabled', false);
        $(":checkbox").click(function () {
            if ($("input:checked").length == ($("#tickets").val())) {
                $(":checkbox").prop('disabled', true);
                $(':checked').prop('disabled', false);
            } else {
                $(":checkbox").prop('disabled', false);
            }
        });
		
		});
		
		function updateTextArea() {
		
			$('#footer').show();
			
            if ($("input:checked").length == ($("#tickets").val())) {
                $(".seatStructure").prop("disabled", true);

                var allNumberVals = [];
                var allSeatsVals = [];

                //Storing in Array
                allNumberVals.push($("#tickets").val());
                $('#seatsBlock :checked').each(function () {
                    allSeatsVals.push($(this).val());
                });

                //Displaying 
                $('#NumberDisplay').val(allNumberVals);
                $('#seatsDisplay').val(allSeatsVals);
				var sum = 0;
				var allseats="";
				for(i=0;i<$("#tickets").val();i++)
				{
					var alpha = allSeatsVals[i].charAt(0);
					if(alpha =="A" ||alpha =="B"||alpha =="C"||alpha =="D"||alpha =="E")
					{
						sum = sum + 150;
					}
					else if(alpha =="F" ||alpha =="G"||alpha =="H"||alpha =="I"||alpha =="J"||alpha =="K"||alpha =="L")
					{
						sum = sum + 80;
					}
					else
					{
						sum = sum + 50;
					}
					if(i== $("#tickets").val()-1)
					{
						allseats = allseats + allSeatsVals[i];
					}
					else
					{
						allseats = allseats + allSeatsVals[i]+",";
					}
					localStorage.setItem("seat"+i,allSeatsVals[i]);
				}
				allseats = allseats.replace(/,/g, "^");
				document.cookie="seats="+allseats;
				document.cookie="totalamount="+sum;
				localStorage.setItem("totalamount",sum);
				document.getElementById("pay1").innerHTML ="Pay Rs."+sum;
            } else {
                alert("Please select " + ($("#tickets").val()) + " seats")
            }
        }
    </script>
    <!-- //script for seat selection -->
	<div class="footer" id="footer" >
		<div id="payamount" >
			<form>
				<button type="button" id="pay" onclick="payy()" name="payamount" ><div id="pay1"></div></button>
			</form>
		</div>
	</div>
	<script>
			function payy()
			{
				localStorage.setItem("noftickets",$("#tickets").val());
				document.cookie="noftickets="+ $("#tickets").val();
				$(location).attr('href','payment');
			}
			
	</script>
</body>

</html>