<html>
<head>
<script>
	function saveuser() {

		
		var firstname = document.getElementById("firstname").value;
		var lastname = document.getElementById("lastname").value;
		var email = document.getElementById("email").value;
		var mobile = document.getElementById("mobile").value;
		
		if (email.length == 0 || firstname.length == 0
				|| lastname.length == 0 || mobile.length == 0) {
			alert("all parameters mandatory");
			return false;
		}else{
			document.regform.submit();
		}
 

	}
</script>
</head>
<body>
	<div align="center">
		<h2>Add USer</h2>
		<form name="regform" action="saveuser" method="post">
			
			  <%
          String csrf="";
          if(null != request.getAttribute("csrf")){
        	   csrf=request.getAttribute("csrf").toString();
          }
         
          //  out.print("csrf:"+csrf);
          %>
          <input type="hidden" name="csrf" value="<%=csrf%>">
			
			<table>
				
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstname" id="firstname"></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastname" id="lastname"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" id="email"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile" id="mobile"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button"
						value="Save" onclick="return saveuser()"></td>
				</tr>

			</table>

		</form>

	</div>


</body>
</html>
