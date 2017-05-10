<?php
			require("class.php");

			$editpro = new product;

			$servername = "localhost";
			$username = "root";
			$password = "my_password";
			$database = "stock";
		    // Create connection
			$conn = new mysqli($servername, $username, $password,$database);
			mysqli_set_charset($conn,"utf8");

		    	
		    	$editpro->Product_ID=$_POST['Product_ID'];
		    	$editpro->Product_Name=$_POST["Product_Name"];
		    	$editpro->Price=$_POST["Price"];
		    	$editpro->Unit=$_POST["Unit"];
		    	$editpro->Numstock=$_POST["Numstock"];
		    	$editpro->SafetyStock=$_POST["SafetyStock"];
		    	$editpro->ExpDate=$_POST["ExpDate"];
		    	$editpro->Wholesalers_ID=$_POST["Wholesalers_ID"];
		    	$editpro->productType_ID=$_POST["productType_ID"];
		    	$editpro->editproduct($conn,$editpro); 


	?>