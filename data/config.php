<?php
  ///////////////////////////////////////////////////
  // Блок "Новости" + Регистрация и личный кабинет
  // 20010-2014 (C) IT-студия SoftTime (http://server-css.ru)
  // Михаил Г.Д. (misha.guzenkov@freeserv.ru)
  ///////////////////////////////////////////////////
  session_start();
  ini_set('display_errors', 0);
  error_reporting(E_ALL);
  // Имя сервера базы данных, например $dblocation = "mysql28.noweb.ru"
  // сейчас выставлен сервер локальной машины
  $host = "localhost";
  // Имя базы данных, на хостинге или локальной машине
  $db = "namebase";
  // Имя пользователя базы данных
  $user = "userbase";
  // Пароль
  $password = "1";
  // Количество новостей, выводимых в анонсе
  $pnumber = 5;
  // Количество символов в одном аносе новостей
  $numchar = 70;
  // Количество новостей, выводимых на странице
  // все новости
  $all_number_news = 10;
  // Версия Web-приложения
  $version = "0.2";
  //Константа абсолютного пути  
  define("URI_PATH","http://{$_SERVER['HTTP_HOST']}/register");
  
  // Соединяемся с сервером базы данных
  $dbcnx = @mysql_connect($host,$user,$password) or die (mysql_error());
  @mysql_select_db($db) or die(mysql_error());

  // Определяем версию сервера
  $query = "SELECT VERSION()";
  $ver = mysql_query($query);
  if(!$ver) exit("Ошибка при определении версии MySQL-сервера");
  $version = mysql_result($ver, 0);
  list($major, $minor) = explode(".", $version);
  // Если версия выше 4.1 сообщаем серверу, что будем работать с
  // кодировкой cp1251
  $ver = $major.".".$minor;
  if((float)$ver >= 4.1)
  {
    mysql_query("SET NAMES 'utf8'");
  }

  // Небольшая вспомогательная функция, которая выводит сообщение об ошибке
  // в случае ошибки запроса к базе данных
  function puterror($message)
  {
    exit("<p>$message</p>");
  }
?>
