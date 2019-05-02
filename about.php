<?php include("includes/header.php"); ?>


        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-12">

              <div class="thmbnails row">
                

                <div class="col-xs-4 col-md-3">
                    
                    <img class="img-responsive" src="admin/images/stoyan-200px.jpg" alt="">

                </div>

                <div class="col-xs-8 col-md-9">
                    
                    <p>Hi, my name is Stoyan Nedev.</p>

                    <p>I'm PHP web developer.</p>

                    <p>On this project you may see a gallery system made totally from scratch and in Object Oriented Programming way.</p>

                    <p>A brief explanation of the project:</p>
                    <ul>
                        <li>Main database class in admin/includes/database.php</li>
                        <li>Main class in admin/includes/db_object.php - consist of 12 universal methods</li>
                        <li>Class for users in admin/includes/user.php - extends Db_object class</li>
                        <li>Class for photos in admin/includes/photo.php - extends Db_object class</li>
                        <li>Class for comments in admin/includes/comment.php - extends Db_object class</li>
                        <li>Class for sessions in admin/includes/session.php - cares about login, messages and visitors count</li>
                        <li>Class for pagination in admin/includes/paginate.php</li>
                        <li>Autoloader for classes in admin/includes/functions.php</li>
                        <li>Ability in the admin area for uploading images one by one or upload multiple images at once via Ajax</li>
                        <li>The system is using Bootstrap framework for better performance and Responsive Web Design;</li>
                    </ul>

                </div>

              </div>              


            </div>




            <!-- Blog Sidebar Widgets Column -->
            <!-- <div class="col-md-4"> -->

            
                 <?php // include("includes/sidebar.php"); ?>



        </div>
        <!-- /.row -->

        <?php include("includes/footer.php"); ?>
