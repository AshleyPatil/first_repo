<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Add News</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<style type="text/css">
	a{
		text-decoration: none;
		color: white;
	}
	a:hover{
		
		color: white;
	}

	.nav-link:hover{
		
		color: black;
	}

	.nav-link{
		text-decoration: none;
		color: white;
	}
	.center{
		text-align: center;
	}
</style>
</head>
<body>

<nav style="background-color: #991f00;color: white;" class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="index.php">Breaking NEWS </a>

      <ul  class="navbar-nav me-auto mb-2 mb-lg-0 offset-lg-2">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="news_detail.php?id=latest">Latest News</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="news_detail.php?id=election">Election 2022</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="news_detail.php?id=india">India</a>
        </li> <li class="nav-item">
          <a class="nav-link" href="news_detail.php?id=world">World</a>
        </li> <li class="nav-item">
          <a class="nav-link" href="news_detail.php?id=sport">Sports</a>
        </li> <li class="nav-item">
          <a class="nav-link" href="news_detail.php?id=other">Other</a>
        </li>
      </ul>
      
    </div>
  </div>
</nav>

<div class="container ">
	<br>
	
	<div class="row ">
		<form action="" method="post" enctype="multipart/form-data">
			<div style="padding: 20px;" class="col-lg-8 offset-lg-2 card">
				<h2 style="text-align: center;"> Add News </h2>
				<br>
				
				<input class="form-control" type="text" name="heading" placeholder="Enter News Heading" required><br>

				<div class="row">
					<div class="col-lg-6">
						<input class="form-control" type="text" name="subheading" placeholder="Enter News Sub Heading" required><br>
					</div>
					<div class="col-lg-6">
							<select class="form-control" name="type">
								<option value="latest">Select Type Of News</option>
								<option value="latest">Latest </option>
								<option value="election">Election </option>
								<option value="india">India </option>
								<option value="world">World </option>
								<option value="sport">Sports </option>
								<option value="other">Other </option>

							</select>
					</div>
				</div>

				<label>Enter Report</label>
				<textarea class="form-control" name="msg" required>	
				</textarea>
				<br>

				<label>Upload Image</label>
				<input class="form-control" type="file" name="img" >
				<br>

				<input class="form-control" type="text" name="location" placeholder="Enter Location" required><br>
				
				<div class="row">
					<div class="col-lg-6">
						<label>Publish Date</label>
						<input class="form-control" type="date" name="date" required>
					</div>

					<div class="col-lg-6">
						<label>Author</label>
						<input class="form-control" type="text" name="auther" placeholder="Reporter Name" required>
					</div>
				</div>
				<br>


				<button class="btn btn-success" type="submit" name="save">Add News</button>

			</div>
		</form>
	</div>
</div>
</body>
</html>

<?php 
$con=mysqli_connect("localhost","root","","news");

if(isset($_POST['save']))
{
	 $h=$_POST['heading']; 
	 $sh=$_POST['subheading'];  
	 $t=$_POST['type'];  
	 $m=$_POST['msg'];  
	 $l=$_POST['location'];  
	 $d=$_POST['date'];  
	 $a=$_POST['auther'];  

		 $p1=$_FILES["img"] ["name"];  
																
		//this variable is used for folder image
		$tmp=$_FILES["img"]["tmp_name"];
																
		//move your photo into your folder
		$s=move_uploaded_file($tmp,"news_images/$p1");


	$insert="insert into add_news(heading,subheading,type,msg,photo,location,date,auther) values('$h','$sh','$t','$m','$p1','$l','$d','$a')";
	
	$q=mysqli_query($con,$insert);
	
	
	if($q)
	{
		echo "<script> alert('News Added Succesfully') </script>";
		echo ("<script>location.href='add_news.php'</script>");

	}
	
}
?>