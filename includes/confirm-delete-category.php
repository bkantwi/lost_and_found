<?php
	include_once('connect_database.php'); 
?>

<div id="content" class="container col-md-12">
	<?php 
		
		if(isset($_POST['btnDelete'])){
			if(isset($_GET['id'])){
				$ID = $_GET['id'];
			}else{
				$ID = "";
			}
			// get image file from table
			$sql_query = "SELECT category_image 
					FROM tbl_news_category 
					WHERE cid = ?";
			
			$stmt = $connect->stmt_init();
			if($stmt->prepare($sql_query)) {	
				// Bind your variables to replace the ?s
				$stmt->bind_param('s', $ID);
				// Execute query
				$stmt->execute();
				// store result 
				$stmt->store_result();
				$stmt->bind_result($category_image);
				$stmt->fetch();
				$stmt->close();
			}
			
			// delete image file from directory
			$delete = unlink('upload/category/'."$category_image");
			
			// delete data from menu table
			$sql_query = "DELETE FROM tbl_news_category 
					WHERE cid = ?";
			
			$stmt = $connect->stmt_init();
			if($stmt->prepare($sql_query)) {	
				// Bind your variables to replace the ?s
				$stmt->bind_param('s', $ID);
				// Execute query
				$stmt->execute();
				// store result 
				$delete_category_result = $stmt->store_result();
				$stmt->close();
			}
			
			// get image file from table
			$sql_query = "SELECT news_image 
					FROM tbl_news 
					WHERE cat_id = ?";
			
			// create array variable to store menu image
			$image_data = array();
			
			$stmt_menu = $connect->stmt_init();
			if($stmt_menu->prepare($sql_query)) {	
				// Bind your variables to replace the ?s
				$stmt_menu->bind_param('s', $ID);
				// Execute query
				$stmt_menu->execute();
				// store result 
				$stmt_menu->store_result();
				$stmt_menu->bind_result($image_data['news_image']);
			}
			
			// delete all menu image files from directory
			while($stmt_menu->fetch()){
				$news_image = $image_data[news_image];
				$delete_image = unlink("$news_image");
			}
			
			$stmt_menu->close();
			
			// delete data from menu table
			$sql_query = "DELETE FROM tbl_news 
					WHERE cat_id = ?";
			
			$stmt = $connect->stmt_init();
			if($stmt->prepare($sql_query)) {	
				// Bind your variables to replace the ?s
				$stmt->bind_param('s', $ID);
				// Execute query
				$stmt->execute();
				// store result 
				$delete_menu_result = $stmt->store_result();
				$stmt->close();
			}
				
			// if delete data success back to reservation page
			if($delete_category_result && $delete_menu_result){
				header("location: books.php");
			}
		}		
		
		if(isset($_POST['btnNo'])){
			header("location: books.php");
		}
		
	?>
	<h1>Confirm Action</h1>
	<hr />
	<form method="post">
		<p>Are you sure want to delete this category?</p>
		<input type="submit" class="btn btn-primary" value="Delete" name="btnDelete"/>
		<input type="submit" class="btn btn-danger" value="Cancel" name="btnNo"/>
	</form>
	<div class="separator"> </div>
</div>
			
<?php include_once('close_database.php'); ?>