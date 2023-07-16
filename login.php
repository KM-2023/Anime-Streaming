<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>
<?php
if(isset($_SESSION['username'])) {
header("location: ".APPURL."");
}
if(isset($_POST['submit'])) {
    if(empty($_POST['email']) OR empty($_POST['password'])) {
        echo "<script>alert('One or more fields are empty')</script>";
    } else {

        //get the data and do the query that checks email

        $email = $_POST['email']; //user submits this
        $password = $_POST['password']; //user submits this

        $login = $conn->query("SELECT * FROM users WHERE email='$email'"); //query to search for details in db
        $login->execute();

        $fetch = $login->fetch(PDO::FETCH_ASSOC);

        if($login->rowcount() > 0) { //if email exists the rowcount would be 1 (implying that it exists)

            if(password_verify($password, $fetch['password'])) { //Checks the hashed password
                //start sessions
                $_SESSION['username'] = $fetch['username'];
                $_SESSION['email'] = $fetch['email'];
                $_SESSION['user_id'] = $fetch['id'];
                //header("location: ".APPURL.""); //if password_verify returns true we'd go to the next page
                echo("<script>location.href'".APPURL."'</script>");
            } else {
                echo "<script>alert('email or password is incorrect')</script>";

            }
        } else {
            echo "<script>alert('email or password is incorrect')</script>";
        }
    }
        //fetch the data
        //use the rowcount
        //check for the password
    }




?>

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="<?php echo APPURL; ?>/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Login</h2>
                        <p>Welcome to the official Anime blog.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Login</h3>
                        <form action="login.php" method="POST">
                            <div class="input__item">
                                <input name="email" type="text" placeholder="Email address">
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input name="password" type="password" placeholder="Password">
                                <span class="icon_lock"></span>
                            </div>
                            <button name ="submit" type="submit" class="site-btn">Login Now</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>Dont’t Have An Account?</h3>
                        <a href="signup.php" class="primary-btn">Register Now</a>
                    </div>
                </div>
            </div>
          
        </div>
    </section>
    <!-- Login Section End -->

    <?php require "../includes/footer.php"; ?>