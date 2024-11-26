<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
{	
    header('location:index.php');
}
else{
?>
<!doctype html>
<html lang="en" class="no-js">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="theme-color" content="#3e454c">
    
    <title>UniRide Portal | Admin Dashboard</title>

    <!-- Font awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Sandstone Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap Datatables -->
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
    <!-- Bootstrap social button library -->
    <link rel="stylesheet" href="css/bootstrap-social.css">
    <!-- Bootstrap select -->
    <link rel="stylesheet" href="css/bootstrap-select.css">
    <!-- Bootstrap file input -->
    <link rel="stylesheet" href="css/fileinput.min.css">
    <!-- Awesome Bootstrap checkbox -->
    <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
    <!-- Admin Style -->
    <link rel="stylesheet" href="css/style.css">

    <style>
    #vehicleChart {
        max-width: 500px;  /* Set a max width for better control */
        max-height: 500px; /* Set a max height for better control */
    }

    #salesChart {
        max-width: 500px;  /* Set a max width for better control */
        max-height: 500px; /* Set a max height for better control */
    }
    </style>


</head>

<body>
<?php include('includes/header.php');?>

    <div class="ts-main-content">
<?php include('includes/leftbar.php');?>
        <div class="content-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-md-12">

                        <h2 class="page-title">Dashboard</h2>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                            <div class="panel-body bk-primary text-light">
                                                <div class="stat-panel text-center">
<?php 
$sql ="SELECT id from tblusers ";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$regusers=$query->rowCount();
?>
                                                    <div class="stat-panel-number h1 "><?php echo htmlentities($regusers);?></div>
                                                    <div class="stat-panel-title text-uppercase">Registered Users</div>
                                                </div>
                                            </div>
                                            <a href="reg-users.php" class="block-anchor panel-footer">Full Detail <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                            <div class="panel-body bk-success text-light">
                                                <div class="stat-panel text-center">
                                                <?php 
$sql1 ="SELECT id from tblvehicles ";
$query1 = $dbh->prepare($sql1);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$totalvehicle=$query1->rowCount();
?>
                                                    <div class="stat-panel-number h1 "><?php echo htmlentities($totalvehicle);?></div>
                                                    <div class="stat-panel-title text-uppercase">Listed Vehicles</div>
                                                </div>
                                            </div>
                                            <a href="manage-vehicles.php" class="block-anchor panel-footer text-center">Full Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                            <div class="panel-body bk-info text-light">
                                                <div class="stat-panel text-center">
<?php 
$sql2 ="SELECT id from tblbooking ";
$query2= $dbh->prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$bookings=$query2->rowCount();
?>

                                                    <div class="stat-panel-number h1 "><?php echo htmlentities($bookings);?></div>
                                                    <div class="stat-panel-title text-uppercase">Total Bookings</div>
                                                </div>
                                            </div>
                                            <a href="manage-bookings.php" class="block-anchor panel-footer text-center">Full Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                            <div class="panel-body bk-warning text-light">
                                                <div class="stat-panel text-center">
<?php 
$sql3 ="SELECT id from tblbrands ";
$query3= $dbh->prepare($sql3);
$query3->execute();
$results3=$query3->fetchAll(PDO::FETCH_OBJ);
$brands=$query3->rowCount();
?>												
                                                    <div class="stat-panel-number h1 "><?php echo htmlentities($brands);?></div>
                                                    <div class="stat-panel-title text-uppercase">Listed Brands</div>
                                                </div>
                                            </div>
                                            <a href="manage-brands.php" class="block-anchor panel-footer text-center">Full Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                            <div class="panel-body bk-primary text-light">
                                                <div class="stat-panel text-center">
                                                    <?php 
                                                    $sql4 ="SELECT id from tblsubscribers ";
                                                    $query4 = $dbh->prepare($sql4);
                                                    $query4->execute();
                                                    $results4=$query4->fetchAll(PDO::FETCH_OBJ);
                                                    $subscribers=$query4->rowCount();
                                                    ?>
                                                    <div class="stat-panel-number h1 "><?php echo htmlentities($subscribers);?></div>
                                                    <div class="stat-panel-title text-uppercase">Subscribers</div>
                                                </div>
                                            </div>
                                            <a href="manage-subscribers.php" class="block-anchor panel-footer">Full Details <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                            <div class="panel-body bk-success text-light">
                                                <div class="stat-panel text-center">
                                                <?php 
                                                    $sql6 ="SELECT id from tblcontactusquery ";
                                                    $query6 = $dbh->prepare($sql6);
                                                    $query6->execute();
                                                    $results6=$query6->fetchAll(PDO::FETCH_OBJ);
                                                    $queryCount=$query6->rowCount();
                                                ?>
                                                    <div class="stat-panel-number h1 "><?php echo htmlentities($queryCount);?></div>
                                                    <div class="stat-panel-title text-uppercase">Queries</div>
                                                </div>
                                            </div>
                                            <a href="manage-contactusquery.php" class="block-anchor panel-footer text-center">Full Details &nbsp; <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                            <div class="panel-body bk-info text-light">
                                                <div class="stat-panel text-center">
                                            <?php 
                                            $sql5 ="SELECT id from tbltestimonial ";
                                            $query5= $dbh->prepare($sql5);
                                            $query5->execute();
                                            $results5=$query5->fetchAll(PDO::FETCH_OBJ);
                                            $testimonials=$query5->rowCount();
                                            ?>
                                                    <div class="stat-panel-number h1 "><?php echo htmlentities($testimonials);?></div>
                                                    <div class="stat-panel-title text-uppercase">Testimonials</div>
                                                </div>
                                            </div>
                                            <a href="testimonials.php" class="block-anchor panel-footer text-center">Full Details &nbsp; <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <?php

                        $sqlgraph = "SELECT b.BrandName, COUNT(t.VehicleId) AS COUNT
                                    FROM tblbooking t
                                    JOIN tblbrands b ON t.VehicleId = b.id
                                    GROUP BY b.BrandName";

                        $queryg= $dbh->prepare($sqlgraph);
                        $queryg->execute();
                        $resultsg = $queryg->fetchAll(PDO::FETCH_OBJ);

                        // Prepare data for JavaScript
                        $brandNames = [];
                        $rentalCounts = [];
                        foreach ($resultsg as $result) {
                            $brandNames[] = $result->BrandName;
                            $rentalCounts[] = $result->COUNT;
                        }
                        
                        ?>


                        <h3 class="page-title">Vehicle Rental Analysis</h3>
                        <canvas id="vehicleChart" width="150" height="150"></canvas>
                    </div>

                    <div class="col-md-8">
                        <?php

                            $querysales = "SELECT YEAR(b.PostingDate) AS year,
                                       SUM(CASE WHEN MONTH(b.PostingDate) = 1 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS January,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 2 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS February,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 3 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS March,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 4 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS April,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 5 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS May,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 6 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS June,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 7 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS July,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 8 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS August,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 9 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS September,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 10 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS October,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 11 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS November,
                                        SUM(CASE WHEN MONTH(b.PostingDate) = 12 THEN v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate) ELSE 0 END) AS December
                                FROM tblbooking AS b
                                JOIN tblvehicles AS v ON b.VehicleId = v.id
                                WHERE b.Status = '0' OR b.Status = '1' OR b.Status = '3'
                                GROUP BY YEAR(b.PostingDate)
                                ORDER BY year;
                            ";

                            $stmtsales = $dbh->prepare($querysales);
                            $stmtsales->execute();
                            $resultsales = $stmtsales->fetchAll(PDO::FETCH_ASSOC);

                            $monthly_sales = [];
                            $years = [];
                            foreach ($resultsales as $row) {
                                $years[] = $row['year'];
                                $monthly_sales[] = [
                                    $row['January'], $row['February'], $row['March'], $row['April'], $row['May'], $row['June'],
                                    $row['July'], $row['August'], $row['September'], $row['October'], $row['November'], $row['December']
                                ];
                            }
                        
                        ?>


                        <h3 class="page-title">Sales Performance And Profit Analysis</h3>
                        <canvas id="salesChart" width="150" height="150"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>

       $(document).ready(function() {
        
        const brandNames = <?php echo json_encode($brandNames); ?>;
        const rentalCounts = <?php echo json_encode($rentalCounts); ?>;

        const vehicleData = {
            labels: brandNames,
            datasets: [{
                label: 'Vehicles Rented',
                data: rentalCounts,
                backgroundColor: [
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 99, 132, 0.2)'
                ],
                borderColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 99, 132, 1)'
                ],
                borderWidth: 1
            }]
        };

        const ctx = document.getElementById('vehicleChart').getContext('2d');
        const vehicleChart = new Chart(ctx, {
            type: 'bar',
            data: vehicleData,
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
      });

      $(document).ready(function() {
            const years = <?php echo json_encode($years); ?>;
            const monthlySales = <?php echo json_encode($monthly_sales); ?>;

            const salesData = {
                labels: [
                    'January', 'February', 'March', 'April', 'May', 'June',
                    'July', 'August', 'September', 'October', 'November', 'December'
                ],
                datasets: years.map((year, index) => ({
                    label: year,
                    data: monthlySales[index],
                    backgroundColor: `rgba(${Math.floor(Math.random() * 255)}, ${Math.floor(Math.random() * 255)}, ${Math.floor(Math.random() * 255)}, 0.2)`,
                    borderColor: `rgba(${Math.floor(Math.random() * 255)}, ${Math.floor(Math.random() * 255)}, ${Math.floor(Math.random() * 255)}, 1)`,
                    borderWidth: 1
                }))
            };

            const ctxSales = document.getElementById('salesChart').getContext('2d');
            new Chart(ctxSales, {
                type: 'line',
                data: salesData,
                options: {
                    responsive: true,
                    scales: {
                        y: { beginAtZero: true }
                    }
                }
            });
        });



     


    </script>
</body>
</html>
<?php } ?>