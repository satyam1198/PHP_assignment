<?php 
	session_start();
	$con=mysqli_connect("localhost","root","","test");
    if($con!=True){
    	echo "connection not found";
    }
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	
	<!-- jsPDF library -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script type="text/javascript">
		function generatePdf(){
		
			var doc = new jsPDF();
			doc.text(80, 5, "Registration Details Page1");
			doc.text(20, 20, 'Username : '+$("#uname").val());
			doc.text(20, 30, 'Email : '+$("#email").val());
			doc.text(20, 40, 'Date of birth : '+$("#dob").val());
			doc.text(20, 50, 'Mobile : '+$("#mob").val());
			doc.text(20, 60, 'Parent Email : '+$("#oeml").val());
			doc.text(20, 70, 'Parent Mob : '+$("#omob").val());
			doc.text(20, 80, 'Add1 : '+$("#add1").val());
			doc.text(20, 90, 'Add2 : '+$("#add2").val());
			doc.text(20, 100, 'City : '+$("#city").val());
			doc.text(20, 110, 'State : '+$("#st").val());
			doc.text(20, 120, 'Registration Reason : '+$("#reason").val());
			

			// Add Image data in new page
			doc.addPage();
			doc.text(80, 5, "Registration Details Page2");
			var img=new Image()
			var input = document.getElementsByName('imagmult[]');
			for (var i = 0; i < input.length; i++) {
                var a = input[i];
                img.src=a.value;
                var width=30*i;
                doc.addImage(img,'JPEG',10+width,20,25,25);
            }
		  	

			// Save the PDF
			doc.save('Registration_details.pdf');
		}
		
	</script>
</head>
<body>
	<h1>Succefully Inserted</h1>
	<?php 
		if(isset($_SESSION["user"])){
			$usr=$_SESSION["user"];
			$sql1 = "SELECT * FROM image where username='$usr'";
			$result1 = $con->query($sql1);

			if ($result1->num_rows > 0) {
			  // output data of each row
			  while($row1 = $result1->fetch_assoc()) {
			  ?> <form id="myform" method="POST">
			    <input type="hidden" name="imagmult[]" value="<?php echo $row1["image"];?>" id="imgSrc">
			  <?php
			  }
			} else {
			  echo "0 results";
			}
			$sql = "SELECT username,email,dob,mobile,optionalemail,optionalmobile,add1,add2,city,state,reason,pdf FROM registration where username='$usr'";
			$result = $con->query($sql);

			if ($result->num_rows > 0) {
			  // output data of each row
			  while($row = $result->fetch_assoc()) {
			  ?>
			    <input type="hidden" value="<?php echo $row["username"];?>" id="uname">
			    <input type="hidden" value="<?php echo $row["email"];?>" id="email">
			    <input type="hidden" value="<?php echo $row["dob"];?>" id="dob">
			    <input type="hidden" value="<?php echo $row["mobile"];?>" id="mob">
			    <input type="hidden" value="<?php echo $row["optionalemail"];?>" id="oeml">
			    <input type="hidden" value="<?php echo $row["optionalmobile"];?>" id="omob">
			    <input type="hidden" value="<?php echo $row["add1"];?>" id="add1">
			    <input type="hidden" value="<?php echo $row["add2"];?>" id="add2">
			    <input type="hidden" value="<?php echo $row["city"];?>" id="city">
			    <input type="hidden" value="<?php echo $row["state"];?>" id="st">
			    <input type="hidden" value="<?php echo $row["reason"];?>" id="reason">
			    
			  <?php
			  }
			} else {
			  echo "0 results";
			}

			$con->close();
		}


	?>
	<input type="submit" name="btn2" onclick="generatePdf()" value="Download PDF"></form>
</body>
</html>