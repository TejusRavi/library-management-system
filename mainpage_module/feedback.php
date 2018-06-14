<?php
include "connection.php";
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>User Feedback Form | LMS </title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/custom.min.css" rel="stylesheet">
</head>

<br>

<div class="col-lg-12 text-center ">
    <h1 style="font-family:Lucida Console">Library Management System</h1>
</div>


<body class="login" style="margin-top: -20px;">



<div class="login_wrapper">

    <section class="login_content" style="margin-top: -40px;">
        <form name="form1" action="" method="post">
            <h2>User Feedback Form</h2><br>

            <div>
                <input type="text" class="form-control" placeholder="Enrollment No" name="enrollment_no" required=""/>
            </div>
            <div>
                <input type="text" class="form-control" placeholder="UserName" name="name" required=""/>
            </div>
            <div>
                <input type="text" class="form-control" placeholder="SEM" name="sem" required=""/>
            </div>
            <div>

                    COMMENTS ON LMS
                                    <textarea name="comment"  class="form-control">

                                    </textarea>


            </div><br>
            <div class="col-lg-12  col-lg-push-2">
                <input class="btn btn-default submit " type="submit" name="submit1" value="Submit Feedback">
            </div>

        </form>
    </section>
    <?php
    if(isset($_POST["submit1"])) {
        mysqli_query($link, "insert into feedback values ('','$_POST[enrollment_no]','$_POST[name]','$_POST[sem]','$_POST[comment]')") or die(mysqli_error($link));

        ?>

        <div class="alert alert-success col-lg-6 col-lg-push-3">
            THANKS FOR YOUR FEEDBACK..! we will work on it:) cheers!!
        </div>
        <?php
    }
    ?>
</div>






</body>
</html>

