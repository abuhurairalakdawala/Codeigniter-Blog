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
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
          <div class="pmd-card pmd-card-default pmd-z-depth">
            <div class="pmd-card-body">
              <h1>Sign In!</h1>
              <?=form_open('','class="form-horizontal"')?>
                <div class="form-group">
                  <label for="username" class="col-sm-2 control-label">Username</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                    <?=(form_error('username')) ? errorMessage('show',form_error('username')) : ''?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="password" class="col-sm-2 control-label">Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    <?=(form_error('password')) ? errorMessage('show',form_error('password')) : ''?>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-12">
                    <?=($error) ? errorMessage('show',$error) : ''?>
                    <button class="btn pmd-ripple-effect btn-primary submit-btn pull-right" type="submit">Submit</button>
                  </div>
                </div>
              <?=form_close()?>
            </div>
          </div>

          <div class="list-group pmd-z-depth pmd-list pmd-card-list">
            <a class="list-group-item" href="javascript:void(0);">Username : admin<br>Password : 12345</a>
            <a class="list-group-item" href="javascript:void(0);">Username : editor<br>Password : 12345</a>
            <a class="list-group-item" href="javascript:void(0);">Username : user<br>Password : 12345</a>
          </div>

        </div>
      </div>
    </div>
  </body>
</html>