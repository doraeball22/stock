<!DOCTYPE html>
<html>

<!-- Top Bar -->
    <?php include 'head.php'; ?>  
<!-- #Top Bar --> 
<body class="theme-blue">
<!-- Top Bar -->
    <?php include 'top-bar.php'; ?>  
<!-- #Top Bar -->
<!-- Left Sidebar -->
    <?php include 'left-menu-bar.php'; ?>  
<!-- #END# Left Sidebar -->



    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>
                    รายละเอียดผู้ใช้
                    
                </h2>
            </div>
            <!-- Basic Examples -->

     <?php
        
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
        $query = "SELECT * FROM user";
        $result = mysqli_query($conn,$query)
         
        
    ?>       
  
            <!-- Exportable Table -->
           <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                รายการทั้งหมด
                            </h2>
                         
                        </div>
                        <div class="body">
                            <table class="table table-hover dashboard-task-infos" id="user-data-table"> 
                                <thead>
                                    <tr>
                                        <th>รหัสผู้ใช้งาน</th>
                                        <th>ชื่อ-สกุล</th>
                                        <th>เบอร์โทรศัพท์</th>
                                        <th>ที่อยู่</th>
                                        <th>ชื่อผู้ใช้งาน</th>
                                        <th>ตำแหน่ง</th>
                                        
                                    </tr>
                                </thead>
                               
                        

                        <tbody>
                                   
                                   <?php
                            while($rows=mysqli_fetch_array($result)){ 
                        ?>  

                        <tr>
                                        <td><?php echo $rows['UserID']; ?></td>
                                        <td><?php echo $rows['Name']; ?></td>  
                                        <td><?php echo $rows['Telephone']; ?></td> 
                                        <td><?php echo $rows['Address']; ?></td>
                                        <td><?php echo $rows['Username']; ?></td>
                                        <td><?php echo $rows['Position']; ?></td>


                                    

                                       
                                    </tr>  
                                    <?php } ?>      
                        </tbody>
                        
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Exportable Table -->






              



    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>

    <!-- Demo Js -->
    <script src="js/demo.js"></script>
    <script type="text/javascript">
        $( document ).ready(function() {
            $('#user-data-table').DataTable();
        });
    </script>
</body>

</html>