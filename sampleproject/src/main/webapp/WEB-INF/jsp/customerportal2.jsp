<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<div id="full-size">
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>CustomerPortal</title>
<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
</head>
<style>
@media only screen and (max-width:800px) {
	/* For tablets: */
	.main {
		width: 80%;
		padding: 0;
	}
	.right {
		width: 100%;
	}
}

@media only screen and (max-width:500px) {
	/* For mobile phones: */
	.menu, .main, .right {
		width: 100%;
	}
}

td {
	padding-bottom: 15px;
	word-wrap: break-word;
	white-space: nowrap;
}

.sc-table {
  border-collapse: collapse;
}

.sc-table th,
.sc-table td {
  max-width: 300px;
  padding: 5px 16px;
  border: 1px solid #ddd;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;

}

.sc-table thead {
  position: sticky;
  inset-block-start: 0;
  background-color: #ddd;
}

th {
	padding-bottom: 15px;
	word-wrap: break-word;
	white-space: nowrap;
	border: 3px solid #ccc;
}

input[type=text] {
	border: 3px solid #ccc;
	/* border-color: gray; */
	outline: none;
	border-style: solid;
	border-width: 1.5px;
	white-space: nowrap;
}

fieldset {
	background-color: white;
	margin-bottom: 2px;
	white-space: nowrap;
}

input:read-only {
	background-color: #f0daea;
	white-space: nowrap;
}

html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	width: 100%;
}

#full-size {
	height: 100%;
	width: 100%;
	overflow: scroll;
	overflow-x: hidden;
}

* {
	box-sizing: border-box;
}

/* Float four columns side by side */
.column {
	float: left;
	width: 33.33%;
	padding: 0 5px;
	margin-top: -10px;
}

/* Remove extra left and right margins, due to padding */
.row {
	/* margin: 0 -5px; */
	margin-left: 6px;
	margin-right: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Style the counter cards */
.card {
	box-shadow: 0 0 0 0 rgba(0, 0, 0, 0.2);
	padding: 0px;
	text-align: rigth;
	background-color: white;
}

.container-ind {
	background-color: #2c3e50;
	border-radius: 10px;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: space-around;
	padding: 4px 0;
	width: 80px;
	heigth: 0.2px;
}

.circle {
	background-color: rgba(0, 0, 0, 0.3);
	border-radius: 100%;
	position: relative;
	height: 20px;
	width: 20px;
}

.circle::after {
	border-right: 4px solid rgba(255, 255, 255, 0.6);
	border-radius: 100%;
	width: 10px;
	height: 10px;
}

.circle.red {
	background-color: #c0392b;
	box-shadow: 0 0 20px 5px #c0392b;
}

.circle.yellow {
	background-color: #f1c40f;
	box-shadow: 0 0 20px 5px #f1c40f;
}

.circle.green {
	background-color: #2ecc71;
	box-shadow: 0 0 20px 5px #2ecc71;
}

#menu {
	list-style: none;
	text-align: left;
	padding: 4px 0;
}

#menu li {
	display: inline;
	padding: 0 10px;
	border-left: solid 1px black;
	text-align: left;
}

#menu li:first-child {
	border-left: none;
	text-align: left;
}

.dropbtn {
	background-color: lightgray;
	color: black;
	padding: 6px;
	font-size: 16px;
	border-style: solid;
	border-width: 1.5px;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 16px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 10px 10px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: gray;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: gray;
}

.sp-btn {
	background-color: lightgray;
	color: black;
	padding: 1px;
	font-size: 16px;
	border-style: solid;
	border-width: 0.8px;
}

.sp-dropdown {
	position: absolute;
	display: inline-block;
}

.sp-dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	z-index: 1;
}

.sp-dropdown-content sp-a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.sp-dropdown-content sp-a:hover {
	background-color: lightgray;
}

.sp-dropdown:hover .sp-dropdown-content {
	display: block;
}

.sp-btn:hover, .sp-dropdown:hover .sp-btn {
	background-color: gray;
}

.container {
	overflow: scroll;
	height: 120px; 
}

.label {
 font-weight: bold;
}

.button{
border-radius: 4px;
background-color: pink;

}

table {
	border-collapse: collapse;
}

table thead {
	position: sticky;
	inset-block-start: 0;
	background-color: #ddd;
}


/* width  */
::-webkit-scrollbar {
  width: 8px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}


/* @keyframes growProgressBar {
  0%, 33% { --pgPercentage: 0; }
  100% { --pgPercentage: var(--value); }
}

@property --pgPercentage {
  syntax: '<number>';
  inherits: false;
  initial-value: 0;
}

div[role="progressbar"] {
  --size: 8rem;
  --fg: #369;
  --bg: #def;
  --pgPercentage: var(--value);
  animation: growProgressBar 3s 1 forwards;
  width: var(--size);
  height: var(--size);
  border-radius: 50%;
  display: grid;
  place-items: center;
  background: 
    radial-gradient(closest-side, white 80%, transparent 0 99.9%, white 0),
    conic-gradient(var(--fg) calc(var(--pgPercentage) * 1%), var(--bg) 0)
    ;
  font-family: Helvetica, Arial, sans-serif;
  font-size: calc(var(--size) / 5);
  color: var(--fg);
}

div[role="progressbar"]::before {
  counter-reset: percentage var(--value);
  content: counter(percentage) '%';
}
 */
</style>
	<body style="background-color: #f0daea">
		<script type="text/javascript">
		//var up = document.getElementById('city');
		var arr = [ "Jakarta", "Surabaya", "Bekasi", "Bandung" ];

	
		
		jQuery(document).ready(function($) {

				$("#search").click(function(){
				
				var search = {};
				search["msisdn"] = $("#msisdn").val();
				
				$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "searchResults",
					data : JSON.stringify(search),
					dataType : 'json',
					success : function(data) {
						$('#fname').val(data.fname);
						$('#screendata').show();
						
						display(data);
					},
					error : function(e) {
						console.log("ERROR: ", e);
						display(e);
					}
					
				});

			});

		});

		function display(data) {
			
			
			$('#msisdnval').val(data.msisdn);
			$('#fname').val(data.fname);
			$('#lname').val(data.lname);
			$('#refNo').val(data.refNo);
			$('#segment').val(data.segment);
			$('#serviceClass').val(data.serviceClass);$('#idtype').val(data.idtype);
			$('#idRef').val(data.idRef);$('#idExp').val(data.idExp);
			$('#address').val(data.address);
			$('#area').val(data.area);
			$('#cluster').val(data.cluster);
			$('#indi').val(data.indi);
			$('#puk1').val(data.puk1);
			$('#puk2').val(data.puk2);
			$('#iccid').val(data.iccid);
			$('#imei').val(data.imei);
			$('#poc').val(data.poc);
			$('#firstActive').val(data.firstActive);
			$('#bal').val(data.bal);
			$('#activationDate').val(data.activationDate);
			$('#grace').val(data.grace);
			$('#accnState').val(data.accnState);
			$('#camData').val(data.camData);
			$('#camSMS').val(data.camSMS);
			$('#camVoice').val(data.camVoice);
			$('#camMix').val(data.camMix);
			$('#rbtTitle').text(data.rbtTitle);
			$('#rbtStatus').text(data.rbtStatus);
			$('#subDate').text(data.subDate);
			if(data.clusterColor == 'yellow'){
				 $("#red").removeClass("red");
				 $("#yellow").addClass("yellow");
				 $("#green").removeClass("green");
			}else if (data.clusterColor == 'green'){
				 $("#red").removeClass("red");
				 $("#yellow").removeClass("yellow");
				 $("#green").addClass("green");
			}
			
			$('#pid').text(data.packageHist[0].pid);
			$('#name').text(data.packageHist[0].name);
			$('#start').text(data.packageHist[0].start);
			$('#end').text(data.packageHist[0].end);
			$('#apid').text(data.activePacks[0].pid);
			$('#aname').text(data.activePacks[0].name);
			$('#astart').text(data.activePacks[0].start);
			$('#aend').text(data.activePacks[0].end);
			$('#ano').text(data.activities[0].no);
			$('#atitle').text(data.activities[0].title);
			$('#atype').text(data.activities[0].type);
			$('#aintType').text(data.activities[0].intType);
			$('#areason').text(data.activities[0].reason);
			$('#astatus').text(data.activities[0].status);
			
			$('#orderno1').text(data.orders[0].orderno);
			$('#ordertype1').text(data.orders[0].ordertype);
			$('#orderStatus1').text(data.orders[0].orderStatus);
			$('#orderDate1').text(data.orders[0].orderDate);
			$('#orderRemark1').text(data.orders[0].orderRemark);
			$('#orderno2').text(data.orders[1].orderno);
			$('#ordertype2').text(data.orders[1].ordertype);
			$('#orderStatus2').text(data.orders[1].orderStatus);
			$('#orderDate2').text(data.orders[1].orderDate);
			$('#orderRemark2').text(data.orders[1].orderRemark);
			
		}
			
		function changeCity() {
			document.getElementById("city").value = arr[Math.floor(Math
					.random()
					* arr.length)];
		}
		
	</script>

		<table style="width: 100%;margin-bottom: -12px" >
			<tbody>
<!-- 				<tr><td>
					<a href="#home"><img src="resources/images/home.png" alt=""
						style="width: 9%; height: 5%; float: left;margin-top: -12px"></a>
					<a href="#cust"><img src="resources/images/customer.png" alt=""
						style="width: 10%; height: 5%; float: left;margin-top: -6px;"></a>
					<a href="#billing_acc"><img src="resources/images/billing_acc.png" alt=""
						style="width: 12%; height: 5%; float: left;margin-top: -3px;"></a>
					<a href="#svc_odrs"><img src="resources/images/svc_odrs.png" alt=""
						style="width: 12%; height: 5%; float: left;margin-top: -4px;"></a>
					<a href="#sales" ><img src="resources/images/sale1.png" alt=""
						style="width: 12%; height: 5%; float: left;margin-top: -12px;"></a>
					<a href="#b2b_cust"><img src="resources/images/b2b_custm.png" alt=""
						style="width: 12%; height: 5%; float: left;margin-top: -5px;"></a>
					<a href="#b2b_bill_acc"><img src="resources/images/b2b_bill_acc.png" alt=""
						style="width: 12%; height: 5%; float: left;"></a>
					<a href="#b2b_svc_acc"><img src="resources/images/b2b_svc_acc.png" alt=""
						style="width: 13%; height: 5%; float: left;"></a>
					<a href="#b2b_asset"><img src="resources/images/b2b_asset.png" alt=""
						style="width: 8%; height: 5%; float: left;"></a>
						<td>
				</tr>
				 -->
				<tr><td>
					<a href="#home"><img src="resources/images/menu1.png" alt=""
						style="float: left;"></a>
					<a href="#cust"><img src="resources/images/menu2.png" alt=""
						style=" float: left;margin-top: 2px;"></a>
					<a href="#billing_acc"><img src="resources/images/menu3.png" alt=""
						style=" float: left;margin-top: 1px;"></a>
					<a href="#svc_odrs"><img src="resources/images/menu4.png" alt=""
						style="	float: left"></a>
					<a href="#sales" ><img src="resources/images/menu5.png" alt=""
						style=" float: left;"></a>
					<a href="#b2b_cust"><img src="resources/images/menu6.png" alt=""
						style="float: left;"></a>
					<a href="#b2b_bill_acc"><img src="resources/images/menu7.png" alt=""
						style="float: left;"></a>
					<a href="#b2b_svc_acc"><img src="resources/images/menu8.png" alt=""
						style="float: left;"></a>
					<a href="#b2b_asset"><img src="resources/images/menu9.png" alt=""
						style="float: left;"></a>
						<td>
				</tr>
			</tbody>
		</table>

		<fieldset>
			<table style="width: 100%;margin-bottom: -12px">
				<tbody>
					<tr>
						<td><div style="width: 70%; Text-align: left; float: left;">
								<label for="msisdn" class="label">MSISDN:</label> <input type="text"
									id="msisdn" name="msisdn"> <input type="button"
									value="Go" class="button" id="search" style="background-color: pink;padding: 4px;margin-left: 10px;">
							</div>
							<div>
								<img src="resources/images/IOH_Logo.png" alt="" style="width: 8%; float: right;margin-bottom: -23px;margin-top: -5px;margin-right: -10px">
							</div>
						<!-- <td style="Width: 10%;" ></td> -->
						<!-- <td><div style=" Text-align:
							left; Width: 30%; float:left;"><label for="callduration">Call
								duration:</label> <input type="text" readonly="readonly" id="callduration" value="">
							</div></td> -->
					</tr>
				</tbody>
			</table>
		</fieldset>
		<div id="screendata" style="display: none">
		<fieldset>
			<table style="width: 100%">
				<tbody>
					<tr>
						<td align="right"><label for="msisdn" class="label">MSISDN:</label></td>
						<td align="left"><input type="text" id="msisdnval" name="msisdnval"
							value="6285717483267" readonly="readonly"></td>
						<td align="right"><label class="label">First Name</label></td>
						<td align="left"><input type="text" id="fname" name="fname"
							value="Santanu" readonly="readonly"></td>
						<td align="right"><label class="label">Last Name:</label></td>
						<td align="left"><input type="text" id="lname" name="lname"
							value="Paul" readonly="readonly"></td>
						
					</tr>
					<tr>
						<td align="right"><label for="reference" class="label">Reference #:</label>
						</td>
						<td align="left"><input type="text" id="reference"
							name="reference" value="MTX77664433" readonly="readonly">
						</td>
						<td align="right"><label for="segment" class="label">Customer
								Segment:</label></td>
						<td align="left"><input type="text" value="Prepaid" id="segment"
							readonly="readonly"></td>
						<td align="right"><label for="serviceClass" class="label">Service Class:</label>
						</td>
						<td align="left"><input type="text"
							value="SC 637 IM3 SP 0 Cashback 90d" readonly="readonly" id="serviceClass">
						</td>

					</tr>
					<tr>
						<td align="right"><label class="label">ID Type:</label></td>
						<td align="left"><input type="text" value="Driving Licence"
							readonly="readonly" id="idtype"></td>
						<td align="right"><label for="segment" class="label">ID Reference
								#:</label></td>
						<td align="left"><input type="text" value="34458719"
							readonly="readonly" id="idRef"></td>
						<td align="right"><label for="segment" class="label">ID Expiry
								Date:</label></td>
						<td align="left"><input type="date" value="2022-06-03"
							readonly="readonly" id="idExp"></td>
					
					<!-- 	<td><input type="submit" style="background-color: pink;padding: 4px;margin: -10px;" class="button" onclick="window.open('packageSubscription','_blank','toolbar=no,width=500,height=500')" value="PackageSubscription"></td>
						<td><input type="submit" style="background-color: pink;padding: 4px;margin: -10px;" class="button" onclick="window.open('cdr','_blank','toolbar=no,width=500,height=550')"value="CDR History"></td>
						 -->
						<td><input type="submit"
								style="background-color: pink; padding: 4px; margin: -10px;"
								class="button"
								onclick="window.open('packageSubscription','_blank','toolbar=no,width=700,height=200')"
								value="PackageSubscription"></td>
							<td><input type="submit"
								style="background-color: pink; padding: 4px; margin: -10px;"
								class="button"
								onclick="window.open('cdr','_blank','toolbar=no,width=700,height=200')"
								value="CDR History"></td>
						
					</tr>
				</tbody>
			</table>
		</fieldset>
		<div>
			<div class="row">
				<div class="column">
					<div class="card">
						<h4 style="color: #151B8D; background-color: #C6DEFF;padding-left: 10px;padding-top: 4px;padding-bottom: 4px;">Location</h4>
						<img alt="" src="resources/images/refresh.png" align="right" style="width: 15px; cursor: pointer; margin-top: -38px; margin-right: 5px" 				onclick="changeCity()"></img>
						<table>
							<tr>
								<td align="right" style="width: 25%"><label class="label" >Address:</label></td>
								<td align="left" style="width: 25%"><input style="width: 100%" type="text"
									value="172/3 Sector V , Webel more , Kolkata"
									readonly="readonly" id="address"></td>

								<td align="right" style="width: 25%"><label class="label">Area:</label></td>
								<td align="left" style="width: 25%"><input style="width: 80%" type="text"
									id="city" readonly="readonly" value="Jakarta"></td>
							</tr>
						</table>
					</div>
				</div>

				<div class="column">
					<div class="card">
						<h4 style="color: #151B8D; background-color: #C6DEFF;padding-left: 10px;padding-top: 4px;padding-bottom: 4px; ">Cluster
							& Churn Indicator</h4>
						<img alt="" src="resources/images/refresh.png" align="right"
							style="width: 15px; cursor: pointer; margin-top: -38px; margin-right: 5px"
							onclick=""></img>
						<table>
							<tr>
								<td align="left" style="width: 33%"><label class="label">Cluster:</label></td>
								<td align="left" style="width: 33%"><input type="text"
									value="High-High Value Sophisticated" readonly="readonly" id="cluster"></td>
								<td style="width: 33%"><input style="width: 100%" type="text"
									value="Treatment" readonly="readonly" id="indi"></td>
							</tr>
							<tr>
								<td align="left" style="width: 50%"><label class="label">Churn Indicator:</label></td>
								<td style="width: 50%">
									<div class="container-ind">
										<div id="red" class="circle" color="red"></div>
										<div id="yellow" class="circle" color="yellow"></div>
										<div id="green" class="circle" color="green"></div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div> 
				
				

				

			</div>


			<div class="row">
				<div class="column" style="margin-top: -55px">
					<div class="card">
						<h4 style="color: #151B8D; background-color: #C6DEFF">Resources</h4>
						<img alt="" src="resources/images/refresh.png" align="right"
							style="width: 15px; cursor: pointer; margin-top: -39px; margin-right: 5px"
							onclick=""></img>
						<table>
							<tr>
								<td align="right" style="width: 25%"><label class="label">PUK 1:</label></td>
								<td align="left" style="width: 25%"><input style="width: 100%" type="text"
									value="95453759" readonly="readonly" id="puk1"></td>

								<td align="right" style="width: 25%"><label class="label">ICCID:</label></td>
								<td align="left" style="width: 25%"><input style="width: 80%" type="text"
									id="iccid" readonly="readonly" value="895645342787977"></td>
							</tr>
							<tr>
								<td align="right" style="width: 25%"><label class="label">PUK 2:</label></td>
								<td align="left" style="width: 25%"><input style="width: 100%" type="text"
									value="347687876" readonly="readonly" id="puk2"></td>

								<td align="right" style="width: 25%"><label class="label">IMEI:</label></td>
								<td align="left" style="width: 25%"><input style="width: 80%" type="text"
									id="imei" readonly="readonly" value=""></td>
							</tr>
							<tr>

								<td align="right" style="width: 25%"><label class="label">POC:</label></td>
								<td align="left" style="width: 25%"><input style="width: 100%" type="text"
									value="" readonly="readonly" id="poc"></td>
							</tr>
						</table>
					</div>
				</div>

				<div class="column" style="margin-top: -12px">
					<div class="card">
						<h4 style="color: #151B8D; background-color: #C6DEFF">Campaign
							Management</h4>
						<img alt="" src="resources/images/refresh.png" align="right"
							style="width: 15px; cursor: pointer; margin-top: -38px; margin-right: 5px"
							onclick=""></img>
						<table>
							<tr>

								<td align="right" style="width: 25%"><label class="label">Data:</label></td>
								<td align="left" style="width: 25%"><input style="width: 100%" type="text"
									value="" readonly="readonly" id="camData"></td>

								<td align="right" style="width: 25%"><label class="label">Voice:</label></td>
								<td align="left" style="width: 25%"><input style="width: 80%" type="text"
									id="camVoice" readonly="readonly" value=""></td>
								<!-- <td align="left"><input style="width: 80%" type="text"
									id="city" readonly="readonly" value="Best Package"></td> -->

							</tr>
							<tr>

								<td align="right" style="width: 25%"><label class="label">SMS:</label></td>
								<td align="left" style="width: 25%"><input style="width: 100%" type="text" id="camSMS"
									value="" readonly="readonly"></td>

								<td align="right" style="width: 25%"><label class="label">Mixed:</label></td>
								<td align="left" style="width: 25%"><input style="width: 80%" type="text"
									readonly="readonly" value="" id="camMix"></td>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="column" style="margin-top: -150px;">
					<div class="card" style="background-color: white;height: 243px">
						<h4 style="color: #151B8D; background-color: #C6DEFF;padding-left: 10px;padding-top: 4px;padding-bottom: 4px;">Usage</h4>
						<img alt="" src="resources/images/refresh.png" align="right"
							style="width: 15px; cursor: pointer; margin-top: -38px; margin-right: 5px"
							onclick=""></img>
						<div class="row">
							<img alt="" src="resources/images/usage.jpg" align="left" style="width: 80%;margin-top: -20px;margin-left: 5px;"></img>
							<!-- <div class="column">
								<img alt="" src="resources/images/quota.jpg" align="left" style="width: 78%;margin-left: 18px;margin-top: -7px;"></img>
							</div>
							<div class="column">
								<img alt="" src="resources/images/call.jpg" align="left" style="width: 78%;margin-left: 18px;margin-top: -7px;"></img>
							</div>
							<div class="column">
								<img alt="" src="resources/images/sms.jpg" align="left" style="width: 78%;margin-left: 18px;margin-top: -7px;"></img>
							</div> -->
						</div>
						
					</div>
				</div>
				
			</div>

			<div class="row">
				<div class="column" style="margin-top: -20px">
					<div class="card">
						<h4 style="color: #151B8D; background-color: #C6DEFF">Prepaid
							Details</h4>
						<img alt="" src="resources/images/refresh.png" align="right"
							style="width: 15px; cursor: pointer; margin-top: -38.5px; margin-right: 5px"
							onclick=""></img>
						<table>
							<tr>
								<td align="right"><label class="label">1st Activation Date:</label></td>
								<td align="left"><input style="width: 100%" type="text"
									value="" readonly="readonly" id="firstActive"></td>

								<td align="right"><label class="label">Balance:</label></td>
								<td align="left"><input style="width: 100%" type="text"
									id="bal" readonly="readonly" value=""></td>
							</tr>
							<tr>
								<td align="right"><label class="label">Grace Date:</label></td>
								<td align="left"><input style="width: 100%" type="text"
									value="" readonly="readonly" id="grace"></td>

								<td align="right"><label class="label">Account State:</label></td>
								<td align="left"><input style="width: 100%" type="text"
									value="" readonly="readonly" id="accnState"></td>
							</tr>
							<tr>
								<td align="right"><label class="label">Active Date:</label></td>
								<td align="left"><input style="width: 100%" type="text"
									value="" readonly="readonly" id="activationDate"></td>
							</tr>
						</table>
					</div>
				</div>

				<div class="column" style="margin-top: -5px">
					<div class="card"
						style="background-color: #C6DEFF; ">
						<tr>
							<td>
								<ul id="menu">	
									<li style="color: #151B8D"><b>Activities List</b></li>
									<li>
										<td><img alt="" src="save.png" align="right"
											style="width: 15px; cursor: pointer;  margin-right: 5px;"
											onclick=""></td> 
											<td><img alt="" src="resources/images/refresh.png" align="right"
											style="width: 15px; cursor: pointer; margin-right: 5px;"
											onclick=""></td>
									</li>
								</ul>
							<td>
						</tr>

						<div class="container" style="margin-top: -15px;">
							<table bgcolor="white" class="sc-table" style="width: 100%">
								<thead>
									<tr>
										<th>Activity No</th>
										<th>Title</th>
										<th>Type</th>
										<th>Interaction Type</th>
										<th>Reason</th>
										<th>Status</th>
										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td align="center"><p id="ano"></p></td>
										<td align="center"><p id="atitle"></p></td>
										<td align="center"><p id="atype"></p></td>
										<td align="center"><p id="aintType"></p></td>
										<td align="center"><p id="areason"></p></td>
										<td align="center"><p id="astatus"></p></td>
									</tr>
								
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="column">
					<div class="card"
						style="background-color: #C6DEFF; ">
						<tr>
							<td>
								<ul id="menu">
									<li style="color: #151B8D"><b>Active Pkges</b></li>
									<li><td><img alt="" src="save.png" align="right"
											style="width: 15px; cursor: pointer;  margin-right: 5px;"
											onclick=""></td>
										<td><img alt="" src="resources/images/refresh.png" align="right"
											style="width: 15px; cursor: pointer; margin-right: 5px;"
											onclick=""></td></li>
								</ul>
							<td>
						</tr>
						<div class="container" style="margin-top: -15px;">
							<table bgcolor="white" class="sc-table" style="width: 100%">
								<thead>
									<tr>
										<th>Package ID</th>
										<th>Package Name</th>
										<th>Start Date</th>
										<th>End Date</th>
										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td align="center"><p id="apid"></p></td>
										<td align="center"><p id="aname"></p></td>
										<td align="center"><p id="astart"></p></td>
										<td align="center"><p id="aend"></p></td>

									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="column" style="margin-top: -14px">
					<div class="card"
						style="background-color: #C6DEFF; ">

						<tr>
							<td>

								<ul id="menu">
									<li style="color: #151B8D"><b>RBT</b></li>
									<li><td><img alt="" src="save.png" align="right"
											style="width: 15px; cursor: pointer;  margin-right: 5px;"
											onclick=""></td>
										<td><img alt="" src="resources/images/refresh.png" align="right"
											style="width: 15px; cursor: pointer; margin-right: 5px;"
											onclick=""></td></li>
								</ul>
							<td>
						</tr>
						<div class="container" style="margin-top: -15px;">
							<table bgcolor="white" class="sc-table" style="width: 100%">
								<thead>
									<tr>
										<th>Song Title</th>
										<th>RBT Status</th>
										<th>Subscription Date</th>
										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td align="center"><p id="rbtTitle"></p></td>
										<td align="center"><p id="rbtStatus"></p></td>
										<td align="center"><p id="subDate"></p></td>
									
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>


				<div class="column" style="margin-top: -5px">
					<div class="card"
						style="background-color: #C6DEFF; ">
						<tr>
							<td>
								<ul id="menu">
									<li style="color: #151B8D"><b>Order History</b></li>

									<li><td><img alt="" src="save.png" align="right"
											style="width: 15px; cursor: pointer;  margin-right: 5px;"
											onclick=""></td>
										<td><img alt="" src="resources/images/refresh.png" align="right"
											style="width: 15px; cursor: pointer;  margin-right: 5px;"
											onclick=""></td></li>
								</ul>
							<td>
						</tr>
						<div class="container" style="margin-top: -15px;">
							<table bgcolor="white" class="sc-table" style="width: 100%">
								<thead>
									<tr>
										<th>Order No</th>
										<th>Order Type</th>
										<th>Order Status</th>
										<th>Order Date</th>
										<th>Order Remarks</th>
										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td align="center"><p id="orderno1"></p></td>
										<td align="center"><p id="ordertype1"></p></td>
										<td align="center"><p id="orderStatus1"></p></td>
										<td align="center"><p id="orderDate1"></p></td>
										<td align="center"><p id="orderRemark1"></p></td>

									</tr>
									<tr>
										<td align="center"><p id="orderno2"></p></td>
										<td align="center"><p id="ordertype2"></p></td>
										<td align="center"><p id="orderStatus2"></p></td>
										<td align="center"><p id="orderDate2"></p></td>
										<td align="center"><p id="orderRemark2"></p></td>


									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="column" style="margin-top: -9px">
					<div class="card"
						style="background-color: #C6DEFF; ">
						<tr>
							<td>
								<ul id="menu">
									<li style="color: #151B8D"><b>Package History</b></li>
									<li><td><img alt="" src="save.png" align="right"
											style="width: 15px; cursor: pointer; margin-right: 5px;"
											onclick=""></td>
										<td><img alt="" src="resources/images/refresh.png" align="right"
											style="width: 15px; cursor: pointer;  margin-right: 5px;"
											onclick=""></td></li>
								</ul>
							<td>
						</tr>
						<div class="container" style="margin-top: -15px;">
							<table bgcolor="white" class="sc-table" style="width: 100%">
								<thead>
									<tr>
										<th>Package ID</th>
										<th>Package Name</th>
										<th>Start Date</th>
										<th>End Date</th>
										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td align="center"><p id="pid"></p></td>
										<td align="center"><p id="name"></p></td>
										<td align="center"><p id="start"></p></td>
										<td align="center"><p id="end"></p></td>

									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				
		</div>
		</div>
		</div>
	</body>
</div>
</html>
