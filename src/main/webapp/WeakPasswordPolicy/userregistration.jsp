<html>
<head>
<link rel='stylesheet' type='text/css' href="tooltip.css" />
<script>
	function userSave() {

		var username = document.getElementById("username").value;
		var firstname = document.getElementById("firstname").value;
		var lastname = document.getElementById("lastname").value;
		var confpasssword = document.getElementById("confpasssword").value;
		var passsword = document.getElementById("passsword").value;
		if (username.length == 0 || firstname.length == 0
				|| lastname.length == 0 || confpasssword.length == 0
				|| passsword.length == 0) {
			alert("all parameters mandatory");
			return false;
		}

		if (passsword == confpasssword) {
			
			var pwdPolicy = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}";
			alert(passsword.match(pwdPolicy));
			if (passsword.match(pwdPolicy)) {
				alert("Strong password");
				document.regform.submit();
				
			}else{
				alert("1)Enter Password is weak password. \n2)Password Policy not met. \n3)Please enter strong password");
				return false;
			}
			
		} else {
			alert("Incorrect confirm password entered.");
			return false;
		}
		
	
	 

	}
</script>
</head>
<body>
	<div align="center">
		<h2>User Registration</h2>
		<form name="regform" action="WeakPasswordPolicy/userregsave" method="post">
			<table>
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" id="username"></td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstname" id="firstname"></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastname" id="lastname"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="passsword" id="passsword"></td>
					<td><div class="tooltip">
							Strong Password Details <span class="tooltiptext"> # a
								digit must occur at least once <br> # a lower case letter
								must occur at least once <br> # an upper case letter must
								occur at least once <br> # a special character must occur
								at least once <br> # no whitespace allowed in the entire
								string <br> # anything, at least eight places though <br>

							</span>
						</div></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type="password" name="confpasssword"
						id="confpasssword"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button"
						value="Save" onclick="return userSave()"></td>
				</tr>

			</table>

		</form>

	</div>


</body>
</html>
