	<?php
 			require("class.php");
 			//require_once('class.upload.php') ;

		$detproduct = new product;

		$servername = "localhost";
        $username = "root";
        $password = "my_password";
        $database = "stock";

        // Create connection
        $conn = new mysqli($servername, $username, $password,$database);
        mysqli_set_charset($conn,"utf8");
        // Check connection
        if (mysqli_connect_errno($conn))
          {
             echo "Failed to connect to MySQL: " . mysqli_connect_error($conn);

          }

			//$query = mysqli_query($conn,"SELECT * FROM `page` WHERE 1");

			$detproduct->product_ID=$_POST['product_ID'];
			$detproduct->deleteproduct($conn,$detproduct);	
	
	?>