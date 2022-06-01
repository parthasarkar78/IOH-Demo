<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PackageSubscription</title>
</head>
<style>

.label {
 font-weight: bold;
}

</style>
<body style="background-color: #f0daea">
	<table style="width: 100%; background-color: #C6DEFF">
		<tbody>
			<tr>
				<td>
					<div style="width: 70%; color: #151B8D; background-color: #C6DEFF">Subscribe add-on Packages</div>
				</td>

				<td style="align: left; float: right; margin-right: 15px"><input
					type="submit" style='cursor: pointer;' value="New"> <input
					type="submit" style='cursor: hand;' value="Submit"> <input
					type="submit" style='cursor: hand;' value="Cancel"></td>
			</tr>
		</tbody>
	</table>

	<table style="width:50%; margin-top: 10px;">
		<tbody>
			<tr>
				
				<form action="/action_page.php" method="get">
				<td align="left" style="width: 6%">
					<label class="label" for="packages">Packages :</label>
					</td>
					<td align="left" style="width: 6%"> <input	list="packages">
					<datalist id="packages">
						<option value="New Year Offer 2GB/7D">
						<option value="Kuota Tambahan 1GB">
						<option value="DND Callblack 30">
						<option value="Tesla Offer10GB/2D">
						<option value="Nexon Offer 8GB/30D">
					</datalist>
					</td>
				</form>
			</tr>
			<tr>
				<form action="action">
				<td>
					
						<label for="action" class="label">Action :</label> 
						</td>
						<td>
						<select name="action"
							id="action">
							<option value=" "></option>
							<option value="add">ADD</option>
							<option value="delete">DELETE</option>
						</select>

					
				</td>
				</form>
			</tr>
		</tbody>
	</table>
	<table style="width: 100%;">
		<tbody>
			


		</tbody>
	</table>
</body>
</html>