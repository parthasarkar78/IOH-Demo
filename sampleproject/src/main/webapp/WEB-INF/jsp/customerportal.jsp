<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Customer Portal</title>

<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>

</head>
<style>
th, td {
	padding-bottom: 15px;
}

input[type=text] {
	border: 3px solid #ccc;
	border-color: gray;
	outline: none;
	border-style: solid;
	border-width: 1.5px;
}

fieldset {
	background-color: lightgray;
	margin-bottom: 2px;
}

input:read-only {
	background-color: lightgray;
}

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

* {
	box-sizing: border-box;
}

/* Float four columns side by side */
.column {
	float: left;
	width: 30%;
	padding: 0 5px;
	margin-top: -10px;
}

/* Remove extra left and right margins, due to padding */
.row {
	margin: 0 -5px;
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
	background-color: lightgray;
}

.container {
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

.container-table {
	overflow: scroll;
	height: 90px;
	width: 365px;
}
</style>
<body>
	<script type="text/javascript">
		//var up = document.getElementById('city');
		var arr = [ "Jakarta", "Surabaya", "Bekasi", "Bandung" ];

	
		
		jQuery(document).ready(function($) {

//			$("#search-form").submit(function(event) {
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
			
			$('#fname').val(data.fname);
		}
		
		function changeCity() {
			document.getElementById("city").value = arr[Math.floor(Math
					.random()
					* arr.length)];
		}
		
	</script>

	<form id="search-form">
		<fieldset>
			<div>
				<div style="width: 70%; Text-align: left; float: left;">
					<label for="msisdn">MSISDN:</label> <input type="text" id="msisdn"
						name="msisdn"> <input type="button" value="Go" id="search">
				</div>
				<div style="Text-align: center; Width: 30%; float: right">
					<label for="callduration">Call duration:</label> <input type="text"
						readonly="readonly" value="5 sec">
				</div>
			</div>
		</fieldset>
	</form>
	<fieldset>
		<table style="width: 100%">
			<tbody>
				<tr>
					<td align="right"><label for="msisdn">MSISDN:</label></td>
					<td align="left"><input type="text" id="msisdnval" name="msisdnval"
						value="6285717483267" readonly="readonly"></td>
					<td align="right"><label>First Name</label></td>
					<td align="left"><input type="text" id="fname" name="fname"
						value="" readonly="readonly"></td>
					<td align="right"><label>Last Name:</label></td>
					<td align="left"><input type="text" id="lname" name="lname"
						value="Paul" readonly="readonly"></td>
					<td align="right"><label for="msisdn">MSISDN:</label></td>
					<td align="left"><input type="text" id="MSISDN" name="MSISDN">
					</td>
				</tr>
				<tr>
					<td align="right"><label for="reference">Reference #:</label>
					</td>
					<td align="left"><input type="text" id="reference"
						name="reference" value="MTX77664433" readonly="readonly">
					</td>
					<td align="right"><label for="segment">Customer
							Segment:</label></td>
					<td align="left"><input type="text" value="Prepaid"
						readonly="readonly"></td>
					<td align="right"><label for="segment">Service Class:</label>
					</td>
					<td align="left"><input type="text"
						value="SC 637 IM3 SP 0 Cashback 90d" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td align="right"><label>ID Type:</label></td>
					<td align="left"><input type="text" value="Driving Licence"
						readonly="readonly"></td>
					<td align="right"><label for="segment">ID Reference #:</label>
					</td>
					<td align="left"><input type="text" value="34458719"
						readonly="readonly"></td>
					<td align="right"><label for="segment">ID Expiry Date:</label>
					</td>
					<td align="left"><input type="date" value="2022-06-03"
						readonly="readonly"></td>
				</tr>
			</tbody>
		</table>
	</fieldset>

	<div class="row">
		<div class="column">
			<div class="card">
				<h4 style="background-color: powderblue;">Location</h4>
				<table>
					<tr>
						<td align="right"><label>Address:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="172/3 Sector V , Webel more , Kolkata" readonly="readonly"></td>

						<td align="right"><label>Area:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							id="city" readonly="readonly" value="Jakarta"></td>
						<td><img alt="" src="refresh.png"
							style="width: 15%; cursor: pointer; padding-left: 1px"
							onclick="changeCity()"></td>

					</tr>
				</table>
			</div>
		</div>

		<div class="column" style="width: 38%">
			<div class="card">
				<h4 style="background-color: powderblue">Cluster & Churn
					Indicator</h4>
				<table>
					<tr>
						<td align="right"><label>Cluster:</label></td>
						<td align="left"><input type="text"
							value="High-High Value Sophisticated" readonly="readonly"></td>
						<td><input style="width: 100%" type="text" value="Treatment"
							readonly="readonly"></td>
						<td><img alt="" src="refresh.png"
							style="width: 15%; cursor: pointer; padding-left: 1px" onclick=""></td>

					</tr>
					<tr>
						<td align="right"><label>Churn Indicator:</label></td>
						<td>
							<div class="container">
								<div class="circle" color="red"></div>
								<div class="circle " color="yellow"></div>
								<div class="circle green" color="green"></div>
							</div>
						</td>

					</tr>

				</table>
			</div>
		</div>

		<div class="column">
			<div class="card">

				<tr>
					<td>

						<ul id="menu">
							<li>Active Pkges</li>
							<li><div class="dropdown">
									<button class="dropbtn">
										Menu<i class="fa fa-caret-down"></i>
									</button>
									<div class="dropdown-content">
										<a href="#"></a>
									</div>
								</div></li>
							<li><input type="submit" value="Unsub"></li>
							<li><td><img alt="" src="refresh.png"
									style="width: 5%; cursor: pointer; padding-left: 1px"
									onclick=""></td> <img>
								<td><img alt="" src="save.png"
									style="width: 5%; cursor: pointer; padding-left: 1px"
									onclick=""></td> <img></li>
						</ul>
					<td>
				</tr>
				<div class="container-table">
					<table bgcolor="white" style="width: 30%">
						<thead>
							<tr>
								<th>Column 1</th>
								<th>Column 2</th>
								<th>Column 3</th>
								<th>Column 4</th>
								<th>Column 5</th>
								<th>Column 6</th>
								<th>Column 7</th>
								<th>Column 8</th>
								<th>Column 9</th>
								<th>Column 10</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
							</tr>
							<tr>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
							</tr>
							<tr>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
							</tr>
							<tr>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
							</tr>
							<tr>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
							</tr>

						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>


	<div class="row">
		<div class="column" style="margin-top: -70px">
			<div class="card">
				<h4 style="background-color: powderblue;">Resources</h4>
				<table>
					<tr>

						<td align="right"><label>PUK_1:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="95453759" readonly="readonly"></td>

						<td align="right"><label>ICCID:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							id="city" readonly="readonly" value="895645342787977"></td>
						<td><img alt="" src="refresh.png"
							style="width: 15%; cursor: pointer; padding-left: 1px" onclick=""></td>

					</tr>
					<tr>

						<td align="right"><label>PUK_2:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="347687876" readonly="readonly"></td>

						<td align="right"><label>IMEI:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							id="city" readonly="readonly" value=""></td>


					</tr>
					<tr>

						<td align="right"><label>POC:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="" readonly="readonly"></td>

					</tr>
				</table>
			</div>
		</div>

		<div class="column" style="width: 38%">
			<div class="card">
				<h4 style="background-color: powderblue;">Interaction</h4>
				<table>
					<tr>
						<td><input type="submit" value="New"></td>
						<td><input type="submit" value="Undo"></td>
						<td><input type="submit" value="Query"></td>
						<td><input type="submit" value="Create Trouble Ticket">
						</td>
					</tr>
				</table>

				<table>
					<tr>

						<td align="left"><label>Title:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							value="" readonly="readonly"></td>

						<td align="left"><label>Int Reason:</label></td>
						<td align="left"><button class="sp-btn">Blackberry</button>
							<div class="sp-dropdown">
								<button class="sp-btn" style="border-left: 1px solid #0d8bf2">
									<i class="fa fa-caret-down"></i>
								</button>
								<div class="sp-dropdown-content">
									<sp-a href="#">Link 1</sp-a>
								</div>
							</div></td>

						<td align="left" style="padding-left: 3%"><label>AgentID:</label></td>
						<td align="left" style="padding-left: 3%"><input
							style="width: 90%" type="text" value="" readonly="readonly"></td>

					</tr>
				</table>
				<table>
					<tr>
						<td align="left"><label>Type:</label></td>
						<td align="left"><button class="sp-btn">Inbound_call</button>
							<div class="sp-dropdown">
								<button class="sp-btn" style="border-left: 1px solid #0d8bf2">
									<i class="fa fa-caret-down"></i>
								</button>
								<div class="sp-dropdown-content">
									<sp-a href="#">Link 1</sp-a>
								</div>
							</div></td>

						<td align="left" style="padding-left: 5%"><label>Int
								Desc:</label></td>
						<td align="left"><button class="sp-btn">P1_cant_use</button>
							<div class="sp-dropdown">
								<button class="sp-btn" style="border-left: 1px solid #0d8bf2">
									<i class="fa fa-caret-down"></i>
								</button>
								<div class="sp-dropdown-content">
									<sp-a href="#">Link 1</sp-a>
								</div>
							</div></td>

						<td align="left" style="padding-left: 5%"><label>FCR:</label></td>

						<td style="padding-left: 5%"><div>
								<input type="checkbox"></input>
							</div></td>


					</tr>
				</table>
				<table>
					<tr>
						<td align="left"><label>Int_Type:</label></td>
						<td align="left"><button class="sp-btn">Complaint</button>
							<div class="sp-dropdown">
								<button class="sp-btn" style="border-left: 1px solid #0d8bf2">
									<i class="fa fa-caret-down"></i>
								</button>
								<div class="sp-dropdown-content">
									<sp-a href="#">Link 1</sp-a>
								</div>
							</div></td>

						<td align="left" style="padding-left: 5%"><label>
								Desc:</label></td>
						<td align="left" style="padding-left: 5%"><input
							style="width: 80%" type="text" value="" readonly="readonly"></td>

						<td align="left"><label>Status:</label></td>
						<td align="left "><button class="sp-btn">Closed</button>
							<div class="sp-dropdown">
								<button class="sp-btn" style="border-left: 1px solid #0d8bf2">
									<i class="fa fa-caret-down"></i>
								</button>
								<div class="sp-dropdown-content">
									<sp-a href="#">Link 1</sp-a>
								</div>
							</div></td>
					</tr>
				</table>
			</div>
		</div>


		<div class="column">
			<div class="card">
				<h4 style="background-color: powderblue">Campaign Management</h4>
				<table>
					<tr>

						<td align="right"><label>Data:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="" readonly="readonly"></td>

						<td align="right"><label>Voice:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							id="city" readonly="readonly" value=""></td>
						<td align="left"><input style="width: 80%" type="text"
							id="city" readonly="readonly" value="Best Package"></td>
						<td><img alt="" src="refresh.png"
							style="width: 15%; cursor: pointer; padding-left: 1px" onclick=""></td>

					</tr>
					<tr>

						<td align="right"><label>SMS:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="" readonly="readonly"></td>

						<td align="right"><label>Mixed:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							readonly="readonly" value=""></td>


					</tr>

				</table>
			</div>
		</div>

	</div>

	<div class="row">
		<div class="column" style="margin-top: -130px">
			<div class="card">
				<h4 style="background-color: powderblue;">Prepaid Details</h4>
				<table>
					<tr>

						<td align="right"><label>1st Activation Date:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="" readonly="readonly"></td>

						<td align="right"><label>Balance:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							id="city" readonly="readonly" value=""></td>
						<td><img alt="" src="refresh.png"
							style="width: 15%; cursor: pointer; padding-left: 1px" onclick=""></td>

					</tr>
					<tr>

						<td align="right"><label>Active Date:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="" readonly="readonly"></td>

						<td align="right"><label>Service Class:</label></td>
						<td align="left"><input style="width: 80%" type="text"
							id="city" readonly="readonly" value=""></td>


					</tr>
					<tr>

						<td align="right"><label>Grace Date:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="" readonly="readonly"></td>

						<td align="right"><label>Account State:</label></td>
						<td align="left"><input style="width: 100%" type="text"
							value="" readonly="readonly"></td>

					</tr>
				</table>
			</div>
		</div>

		<div class="column" style="width: 38%">
			<div class="card">

				<tr>
					<td>

						<ul id="menu">
							<li>Activities List</li>
							<li><div class="dropdown">
									<button class="dropbtn">
										Menu<i class="fa fa-caret-down"></i>
									</button>
									<div class="dropdown-content">
										<a href="#"></a>
									</div>
								</div></li>
							<li></li>
							<td style="padding-right: 180px">1-1 of 1</td>
							<li>
								<td><img alt="" src="save.png"
									style="width: 5%; cursor: pointer;" onclick=""></td> <img>
							</li>
						</ul>
					<td>
				</tr>
				<div class="container-table" style="width: 100%">
					<table bgcolor="white">
						<thead>
							<tr>
								<th>Column 1</th>
								<th>Column 2</th>
								<th>Column 3</th>
								<th>Column 4</th>
								<th>Column 5</th>
								<th>Column 6</th>
								<th>Column 7</th>
								<th>Column 8</th>
								<th>Column 9</th>
								<th>Column 10</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
							</tr>
							<tr>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
							</tr>
							<tr>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
							</tr>
							<tr>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
							</tr>
							<tr>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
							</tr>

						</tbody>
					</table>
				</div>

			</div>
		</div>



		<div class="column" style="margin-top: -100px">
			<div class="card">

				<tr>
					<td>

						<ul id="menu">
							<li>Package History</li>
							<li><div class="dropdown">
									<button class="dropbtn">
										Menu<i class="fa fa-caret-down"></i>
									</button>
									<div class="dropdown-content">
										<a href="#"></a>
									</div>
								</div></li>
							<li></li>
							<li><td><img alt="" src="refresh.png"
									style="width: 5%; cursor: pointer; padding-left: 1px"
									onclick=""></td> <img>
								<td><img alt="" src="save.png"
									style="width: 5%; cursor: pointer; padding-left: 1px"
									onclick=""></td> <img></li>
						</ul>
					<td>
				</tr>
				<div class="container-table">
					<table bgcolor="white">
						<thead>
							<tr>
								<th>Column 1</th>
								<th>Column 2</th>
								<th>Column 3</th>
								<th>Column 4</th>
								<th>Column 5</th>
								<th>Column 6</th>
								<th>Column 7</th>
								<th>Column 8</th>
								<th>Column 9</th>
								<th>Column 10</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
								<td>Row 1</td>
							</tr>
							<tr>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
								<td>Row 2</td>
							</tr>
							<tr>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
								<td>Row 3</td>
							</tr>
							<tr>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
								<td>Row 4</td>
							</tr>
							<tr>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
								<td>Row 5</td>
							</tr>

						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>

	<div class="column" style="margin-top: -40px">
		<div class="card">

			<tr>
				<td>

					<ul id="menu">
						<li>RBT</li>
						<li><div class="dropdown">
								<button class="dropbtn">
									Menu<i class="fa fa-caret-down"></i>
								</button>
								<div class="dropdown-content">
									<a href="#"></a>
								</div>
							</div></li>
						<li></li>
						<li><input type="submit" value="RBT Info">
							<td><img alt="" src="refresh.png"
								style="width: 5%; cursor: pointer; padding-left: 1px" onclick=""></td>
							<img>
							<td><img alt="" src="save.png"
								style="width: 5%; cursor: pointer; padding-left: 1px" onclick=""></td>
							<img></li>
					</ul>
				<td>
			</tr>
			<div class="container-table">
				<table bgcolor="white">
					<thead>
						<tr>
							<th>Column 1</th>
							<th>Column 2</th>
							<th>Column 3</th>
							<th>Column 4</th>
							<th>Column 5</th>
							<th>Column 6</th>
							<th>Column 7</th>
							<th>Column 8</th>
							<th>Column 9</th>
							<th>Column 10</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
						</tr>
						<tr>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
						</tr>
						<tr>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
						</tr>
						<tr>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
						</tr>
						<tr>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
						</tr>

					</tbody>
				</table>
			</div>

		</div>
	</div>
	</div>

	<div class="column" style="width: 38%">
		<div class="card">
			<h3></h3>
			<p></p>
			<p></p>
		</div>
	</div>

	<div class="column" style="margin-top: -90px">
		<div class="card">

			<tr>
				<td>

					<ul id="menu">
						<li>Reload History</li>
						<li><div class="dropdown">
								<button class="dropbtn">
									Menu<i class="fa fa-caret-down"></i>
								</button>
								<div class="dropdown-content">
									<a href="#"></a>
								</div>
							</div></li>
						<li></li>
						<li><td><img alt="" src="refresh.png"
								style="width: 5%; cursor: pointer; padding-left: 1px" onclick=""></td>
							<img>
							<td><img alt="" src="save.png"
								style="width: 5%; cursor: pointer; padding-left: 1px" onclick=""></td>
							<img></li>
					</ul>
				<td>
			</tr>
			<div class="container-table">
				<table bgcolor="white">
					<thead>
						<tr>
							<th>Column 1</th>
							<th>Column 2</th>
							<th>Column 3</th>
							<th>Column 4</th>
							<th>Column 5</th>
							<th>Column 6</th>
							<th>Column 7</th>
							<th>Column 8</th>
							<th>Column 9</th>
							<th>Column 10</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
							<td>Row 1</td>
						</tr>
						<tr>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
							<td>Row 2</td>
						</tr>
						<tr>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
							<td>Row 3</td>
						</tr>
						<tr>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
							<td>Row 4</td>
						</tr>
						<tr>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
							<td>Row 5</td>
						</tr>

					</tbody>
				</table>
			</div>

		</div>
	</div>
	</div>

	</div>




</body>
</html>
