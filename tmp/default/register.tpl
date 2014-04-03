<html>
<head>
  <title>Регистрация</title>
  <link rel="stylesheet" type="text/css" href="<?=URI_PATH;?>/tmp/css/style.css" media="screen" />
  <script type="text/javascript" src="<?=URI_PATH;?>/js/script.js"></script> 
</head>  
<body>

 <div id="wraper">
  <h1>Зарегистрироваться</h1><br />
  <form action="register.php"  method="post" name="form" id="registration"> 
  <p>E-mail:<b>*</b><br /> 
  <input name="email" class="input" type="text" maxlength="25"/></p> 
  <p>Имя:<b>*</b><br /> 
  <input name="name" class="input" type="text"  maxlength="15"/></p> 
  <p>Пароль:<b>*</b><br /> 
  <input name="password" class="input" type="password" maxlength="25"/></p> 
  <p>Повтор пароля:<b>*</b><br /> 
  <input name="repassword" class="input" type="password" maxlength="25"/></p> 
  <p>Капча:<br />
  <input name="pkey" type="text" class="input"><br /><img src="captcha/captcha.php"></p>
  <input type="submit" value="Отправить" name="button" class="button" onclick="return thisform(this.form)"> 
  </form> <br />
  <br /><br /><br />
</div>
</body>
</html>
