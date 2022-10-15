
<?php 
$con=mysqli_connect("localhost","root","","news");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>News</title>
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

<nav style="background-color: #991f00;color: white;" class="navbar navbar-expand-sm">
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
<br>


<div class="container">
	<div style="padding: 10px;" class="row">
		<div style=" background-image: linear-gradient(to bottom right, red, yellow);" class="col-lg-2">
			<h3>Breaking </h3>
		</div>

		<div style="background-color: #d9d9d9;" class="col-lg-10">
			
			<marquee style="margin-top: 5px;"> Ukraine-Russia war: Latest updates
				Russia facing strong resistance, says UK defence ministry   || Cryptocurrency donations have poured into a nonprofit organization that provides support to Ukrainian soldiers after Russia launched a large-scale attack on Ukraine. ||
		 		Uttar Pradesh, Punjab, Goa, Manipur and Uttarakhand will go to polls in 2022. || After months of speculation, Lenovo has finally launched the Motorola Edge 30 Pro in Indian markets.
		 	</marquee>
		</div>
	</div>
</div>
<br> 


<div class="container card">
	<br>
	
		<h2 class="center"> <?php echo $type=$_GET['id'];?> News </h2>
	
		<hr>

<div class="row">

<?php 
 $id=$_GET['id'];
  	$s="select * from add_news where type='$id' ORDER BY id DESC";
  	$r=mysqli_query($con,$s);

  	while($a=mysqli_fetch_array($r)) {
  		$h=$a['heading'];
  		$sh=$a['subheading'];
  		$t=$a['type'];
  		$m=$a['msg'];
  		$p=$a['photo'];
  		$l=$a['location'];
  		$d=$a['date'];
  		$a=$a['auther'];

  		echo "
						  	<div class='col-lg-12'>
						  	<br><br>
						 		<div class='row'>
						 			<div class='col-lg-5'>
										<img src='news_images/$p' width='100%' height='350px'>
									</div>
									
									<div class='col-lg-6'>
										<h2 class='center'> $h</h2>
										<h4>$sh</h4>
											<p> $m</p>

											<div class='row'>
												<div class='col-lg-4 offset-lg-8'>
													<p>Date: $d </p>
													
													<p>Location : $l </p>

													<p>Reporter:$a </p>
												</div>
											</div>
									</div>

								</div>
							</div>
										<hr>



						  		";
  		
  	}


?>
</div>
</div>


<br> <br>
<br> <br>
<br> <br>
<br> <br>
<div style="background-color: black;color: white;padding: 15px;" class="container-fluid">
	<div class="row">
		<p class="center"> Web Design And Developed By Ashlesha </p>
	</div>
</div>
</body>
</html>
