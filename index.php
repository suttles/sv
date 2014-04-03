<?php 
include_once('data/function.php');		   
# Меню и спидбар
require_once "tmp/default/common/header.tpl";
require_once "tmp/default/menu.tpl";
require_once "tmp/default/speedbar.tpl";
?>
<link rel="StyleSheet" type="text/css" href="main/css/news.css">
<?php
  // Выставляем уровень обработки ошибок
  Error_Reporting(E_ALL & ~E_NOTICE); 

  // Этот файл выводит первые $pnumber новостей
  // Устанавлинваем соединение с базой данных
  require_once("data/config.php");
 ?>
<div class="container">
<h1>Новости</h1>
<?php
  // Выясняем общее количество новостей в базе данных, для того чтобы
  // правильно отображать ссылки на последующие новости.
  $tot = mysql_query("SELECT count(*) FROM news WHERE hide='show' AND putdate <= NOW()");
  if ($tot)
  {
    $total = mysql_result($tot,0);
    // Если в базе новостей меньше чем $pnumber
    // выводим их без вывода ссылки "Все новости".
  }
  else puterror("Ошибка при обращении к блоку новостей");
  // Запрашиваем все видимые новости, т.е. те, у которых в базе данных hide='show',
  // если это поле будет равно 'hide', новость не будет отображаться на странице
  $query = "SELECT * FROM news 
            WHERE hide='show' AND putdate <= NOW()
            ORDER BY putdate DESC
            LIMIT $pnumber";
  $new = mysql_query($query);
  if(!$new) puterror("Ошибка при обращении к блоку новостей");
  if(mysql_num_rows($new) > 0)
  {
    while($news = mysql_fetch_array($new))
    {
      // Выводим заголовок новости
      echo "<p class=newsblockzag><b>".$news['name']."</b></p>";
      // Формируем анонс
      // Переменная $numchar содержит примерное
      // количество символов в анонсе
      $pos = strpos(substr($news['body'],$numchar), " ");
      // Если новость длинная, то выводим троеточие...
      if(strlen($news['body'])>$numchar) $srttmpend = "...";
      else $strtmpend = "";
      // Выводим анонс
      echo "<p class=newsblock>".substr($news['body'], 0, $numchar+$pos).$srttmpend;
    }
  }
?>
<br><br>
<div class="container">
<?php
# Футер
require_once "tmp/default/common/footer.tpl";
?>
