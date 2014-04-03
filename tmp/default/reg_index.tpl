<html>
<head>
<title>Главная</title>
<link rel="stylesheet" type="text/css" href="<?=URI_PATH;?>/tmp/css/style.css" media="screen" />
</head>
<body>
<div id="wraper">
  <div id="str"><b>Добро пожаловать <?=$row['name']; ?>:</b> <a href="profile.php">Редактировать данные</a> || <a href="exit.php">Выйти</a></div>
  <div id="content"><h3>Приветствуем вас <?=$row['name'].$row['firstname']; ?> . Это ваш личный кабинет </h3></div>
  <br /><br /><center><b>Ваш текст</b></center>
  <br /><br /><center><b><font color="red">Вы были зарегистрированны:</font> <?=$row['date'];?></b>
  <br /><br />
 <b> <a href="repassword.php">Изменить пароль</a></b>
  
 <br />
 <br />
 <form method="post">
 <input type="submit" name="del" value="Удалить аккаунт" />
 </form>
  </center>
</div>
<div id="copy"><center>копирайт</center></div>
</body>
</html> 
