<html>
<head>
<title>Авторизация</title>
<link rel="stylesheet" type="text/css" href="<?=URI_PATH;?>/main/css/bootstrap.min.css" media="screen" />


</head>
<body>

			 
<center><h3>Авторизируйтесь пожалуйста</h3><br />
<form action="ath.php"  method="post" name="form" id="registration"> 
  <p>E-mail:<b>*</b><br /><input name="email" class="input" type="text" maxlength="25"/></p>  
  <p>Пароль:<b>*</b><br /> 
  <input name="password" class="input" type="password"  maxlength="25"/></p> 
  <p>Запомнить меня:<input type="checkbox" value="on" name="sess">      <a href="log.php">Забыли пароль</a></p>
  <input type="submit" value="Отправить" name="button" class="button" > 
  </form>
</body>
