<?php include("includes/header.php"); ?>


<?php 

$page = !empty($_GET['page']) ? (int)$_GET['page'] : 1;

$items_per_page = 8;

(isset($_GET['user_id']) and $_GET['user_id']>0) ? $user_id = $_GET['user_id'] : $user_id = "";

$items_total_count = Photo::count_all($user_id);


$paginate = new Paginate($page, $items_per_page, $items_total_count);

$where_user = (isset($_GET['user_id']) and $_GET['user_id']>0) ? " WHERE user_id=".(int)$_GET['user_id']." " : " " ;

(isset($_GET['user_id']) and $_GET['user_id']>0) ? $url_user = "&user_id={$_GET['user_id']}" : $url_user = "";

$sql = "SELECT * FROM photos {$where_user}";
$sql .= "LIMIT {$items_per_page} ";
$sql .= "OFFSET {$paginate->offset()}";

//echo $sql;

$photos = Photo::find_by_query($sql);


// $photos = Photo::find_all();

?>

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-12">

              <div class="row">

              <?php foreach ($photos as $photo) : ?> 
                

                <div class="col-xs-6 col-md-3">
                    
                    <a class="thumbnail" href="photo.php?id=<?php echo $photo->id; ?>">
                        <img class="home_page_photo img-responsive" src="admin/<?php echo $photo->picture_path(); ?>" alt="">
                    </a>

                </div>
            
         
              <?php endforeach; ?>

              </div>


              <div class="row">
                    

                <ul class="pager">

                    <?php 
                    if ($paginate->total_page() > 1) { 

                     
                        if($paginate->has_previous()) {

                            echo "<li class='previous'><a href='index.php?page={$paginate->previous()}{$url_user}'>Previous</a></li>";
                        } 
                        


                        for ($i=1; $i <= $paginate->total_page(); $i++) { 

                            if ($i == $paginate->current_page) {
                                
                                echo "<li class='active'><a href='index.php?page={$i}{$url_user}'>{$i}</a></li>";

                            } else {
                                
                                echo "<li><a href='index.php?page={$i}{$url_user}'>{$i}</a></li>";

                            }

                        }

                        if($paginate->has_next()) {

                            echo "<li class='next'><a href='index.php?page={$paginate->next()}{$url_user}'>Next</a></li>";
                        }                      
                    }
                    ?>
                    
                </ul>

              </div>


            </div>




            <!-- Blog Sidebar Widgets Column -->
            <!-- <div class="col-md-4"> -->

            
                 <?php // include("includes/sidebar.php"); ?>



        </div>
        <!-- /.row -->

        <?php include("includes/footer.php"); ?>
