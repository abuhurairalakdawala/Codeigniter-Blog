<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Blog</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="<?=base_url('assets/css/bootstrap.min.css');?>">
    <link rel="stylesheet" href="<?=base_url('assets/css/propeller.min.css');?>">
    <link rel="stylesheet" href="<?=base_url('assets/css/style.css');?>">
  </head>
  <body>
  <nav class="navbar navbar-inverse navbar-fixed-top pmd-navbar pmd-z-depth">
    <div class="container-fluid">
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li><a class="pmd-ripple-effect" href="<?=base_url('blog/show')?>">Blogs List</a></li>
          <li><a class="pmd-ripple-effect" href="<?=base_url('blog/add')?>">Add Blog</a></li>
          <?php
            if(isLoggedIn()):
          ?>
          <li><a class="pmd-ripple-effect" href="<?=base_url('login/destroy')?>">Logout</a></li>
          <?php
            else:
          ?>
          <li><a class="pmd-ripple-effect" href="<?=base_url('login')?>">Login</a></li>
          <?php
            endif;
          ?>
        </ul>
      </div>
    </div>
  </nav>
