<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="regForm" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name1" placeholder="Enter Name"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email1" placeholder="Enter Email"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="pass1" placeholder="Enter Password"/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender1" value="Male"/> Male <input
					type="radio" name="gender1" value="Female"/> Female</td>
			</tr>
			<tr>
				<td>City:</td>
				<td><select name="city1">
						<option>Select City</option>
						<option>Delhi</option>
						<option>Patna</option>
						<option>Pune</option>
						<option>Banglore</option>
						<option>Hydrabad</option>
						<option>Mumbai</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="Register" /></td>
			</tr>
		</table>
	</form>
</body>
</html>