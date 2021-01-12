<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <title>Trường Đại học Công nghệ Thông tin và Truyền thông Việt - Hàn</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<!-- <link rel="shortcut icon" href="{{asset('backend/images/logo.png')}}" style="height: auto; "> 
<link rel="stylesheet" href="{{asset('backend/css/bootstrap.min.css')}}" > -->
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<!-- <link href="{{asset('backend/css/style.css')}}" rel='stylesheet' type='text/css' />
<link href="{{asset('backend/css/style-responsive.css')}}" rel="stylesheet"/> -->
<!-- font CSS -->
<!-- <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'> -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
<style>
body {
    background-color: #CC99CC;
}
#wrapper {
    width: 960px;
    margin: 0px auto;
    background: white;
    padding: 10px 20px;
}
img {
    width: 915px;
}
.button {
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #CC99CC;
}
a {
    color: black;
}
a:hover {
    color: white;
    text-decoration: none;
}
.button1:hover {
  background-color: #CC99CC;
  color: white;
}
</style>
</head>
<body>
    <div id="wrapper">
        <div>
            <img src="{{asset('backend/images/vku.png')}}">
        </div>
        <center>
        <div>
            Chọn đối tượng đăng nhập ký túc xá:
            <button class="button button1"><a href="http://127.0.0.1:8000/admin/login">Quản trị viên</a></button>
            <button class="button button1"><a href="http://127.0.0.1:8000/user/login">Sinh viên</button>
        </div>
        </center>
        <div>
        <img src="{{asset('backend/images/ktx.png')}}">
        </div>
    </div>      
</body>
</html>