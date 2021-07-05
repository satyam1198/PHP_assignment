<?php
session_start();
    $con=mysqli_connect("localhost","root","","test");
    if($con!=True){
    	echo "connection not found";
    }
    if(isset($_POST["submit"])){
		$uname=$_POST["uname"];
		$email=$_POST["mail"];
		$pswd=$_POST["pwd"];
		$cpswd=$_POST["rpwd"];
		$doi=$_POST["doi"];
		$mob=$_POST["mobile"];
		$gmail1=$_POST["gml"];
		$gmob=$_POST["gmob"];
		$add1=$_POST["add1"];
		$add2=$_POST["add2"];
		$city=$_POST["city"];
		$state=$_POST["state"];
		$regon=$_POST["regon"];
		/*image unpload*/
		
		$root = dirname(__FILE__);
		$allowTypes = array('jpg','png','jpeg','gif'); 
		echo "<pre>";
		$check=1;
		foreach($_FILES['imgupd']['name'] as $key=>$val){ 
            // File upload path 
            $imagefolder = $root."/upload/image/".$uname."/";
			$imagfolder = "upload/image/".$uname."/";
			echo $imagefolder;
			if(!is_dir($imagefolder)){
			   mkdir($imagefolder, 0755);
			}
            $fileName = basename($_FILES['imgupd']['name'][$key]); 
            $targetFilePath = $imagfolder . $fileName; 
             
            // Check whether file type is valid 
            $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
            if(in_array($fileType, $allowTypes)){ 
                // Upload file to server 
                if(move_uploaded_file($_FILES["imgupd"]["tmp_name"][$key], $targetFilePath)){ 
                	$check=$check*1;
                   	$sql = "INSERT INTO image (username,image)VALUES ('$uname','$targetFilePath')";
					if ($con->query($sql) === TRUE) {
					  echo "New record created successfully";
					} else {
					  echo "Error: " . $sql . "<br>" . $con->error;
					}
                   
                }else{ 
                	$check=$check*0;
                    
                } 
            }else{ 
            	$check=$check*0;
                

            } 
        } 


		/*pdf upload*/

		$targetfolder = "upload/pdf/";
		$pdffilename=$targetfolder.$_FILES['pdfupd']['name'];
		$targetfolder = $targetfolder . basename( $_FILES['pdfupd']['name']) ;

		$ok=1;

		$file_type=$_FILES['pdfupd']['type'];

		if ($file_type=="application/pdf") {

			if(move_uploaded_file($_FILES['pdfupd']['tmp_name'], $targetfolder))

			{
				echo "The file ". basename( $_FILES['pdfupd']['name']). " is uploaded";
			}

			else {
				echo "Problem uploading file";
			}

		}

		else {

			echo "You can only uplload pdf file.<br>";

		}

		/*Check password*/

		if($pswd==$cpswd and $check==1){
			$pswd = password_hash($pswd, PASSWORD_DEFAULT); 
			#echo $pswd;
			$sql = "INSERT INTO registration (username,email,pass,dob,mobile,optionalemail,optionalmobile,add1,add2,city,state,reason,pdf)VALUES ('$uname','$email','$pswd','$doi','$mob','$gmail1','$gmob','$add1','$add2','$city','$state','$regon','$pdffilename')";
			if ($con->query($sql) === TRUE) {
			  echo "New record created successfully";
			  $_SESSION["user"]=$uname;
			  header("Location: success.php");

			} else {
			  echo "Error: " . $sql . "<br>" . $con->error;
			}
		}
		else{
			echo "Confirm password has not match with give password";
		}
		
		$con->close();
		
	}
?>