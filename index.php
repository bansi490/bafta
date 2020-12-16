<?php
	session_start();
	//configration file
	include('config.php'); 

	if(isset($_REQUEST['submit'])){	
		$id = $_REQUEST['id'];
		$pwd = $_REQUEST['pwd'];
			
		$sql = "SELECT * FROM `bafta_users` WHERE `username`='$id' AND `password`='$pwd'";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
		$count=$result->num_rows;
		
		if($count==0){
			$message = "Invalid Id or Password";
			echo "<script type='text/javascript'>alert('$message');</script>";

		}else{				
			 $_SESSION['Admin']=$row['id'];			
			 if(isset($_SESSION['Admin'])){
				//redirect page based on the userlevel
				if($row['userlevel']==1){
					header("location:easy.html");
				} else if($row['userlevel']==2){
					header("location:medium.html");
				} else if($row['userlevel']==3){
					header("location:hard.html");
				}	
			}	
		}
	}


?>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Bafta | Login</title>

	<link href="assets/css/bafta.css" rel="stylesheet" type="text/css"/>
	
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<div class="page">
		<div class="page-body">
        	<br>
			<div class="page-info">
				<H1>Bafta</H1>
                
				
				<form class="form-inline" method="post" action="">
					<div class="input-group input-medium">
                    				<input type="text" name="id" id="id" class="form-control" placeholder="User Id">
                        			<br><br>
						<input type="password" name="pwd" id="pwd" class="form-control" placeholder="Password">
                   				<br><br>
						       
						<button type="submit" class="btn blue" name='submit'>Login</button>
						
					</div>
					<!-- /input-group -->
				</form>
			</div>
		</div>
	</div>
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>