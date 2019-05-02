  </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

	<!-- WYSIWYG TinyMCE text editor -->
    <script src="https://cloud.tinymce.com/5/tinymce.min.js?apiKey=3bgl4csabacsi664znerfak8sj42trm8plz0z4et75yxxq9z"></script> 
    

    <!-- Dropzone js -->
    <script src="js/dropzone.js"></script>

    <!-- custom js -->
    <script src="js/scripts.js"></script>


    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Views',     <?php echo $session->count; ?>],
          ['Comments',  <?php echo Comment::count_all(); ?>],
          ['Users',     <?php echo User::count_all(); ?>],
          ['Photos',    <?php echo Photo::count_all(); ?>]
        ]);

        var options = {
          legend: 'none',
          pieSliceText: 'label',
          title: 'My Daily Activities',
          backgroundcolor: 'transparent'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

</body>

</html>
