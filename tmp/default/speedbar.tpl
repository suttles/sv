<div class="well pull-left" style="min-width: 340px; margin: 5px; padding: 8px 0;">
<ul class="nav nav-list">
<li class="nav-header">Меню</li>
<li class="active"><a href="/"><i class="icon-white icon-home"></i> Главная</a></li>
<li><a href="#"><i class="icon-book"></i> Контакты</a></li>
<li><a href="#"><i class="icon-pencil"></i> Тарифы</a></li>
<li class="nav-header">Информация</li>
<li><a href="/profile.php?id={ids}"><i class="icon-user"></i> Профиль</a></li>
<li><a href="/register">Регистрация</a>
<ul class="nav nav-list">
<?php $123 = mysql_fetch_assoc($select); ?>
<li><a href="https://51.153.12.10/manager/{ispcache}">ISP System</a></li>
<ul class="nav nav-list">
<li><a href="/login.php">Войти</a></li>
<li><a href="/exit.php">Выйти</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="/setting.php?id={ids}"><i class="icon-cog"></i> Настройки</a></li>
<li class="divider"></li>
<li><a href="#"><i class="icon-flag"></i> Помощь</a></li>
<li><a href="#"><i class="icon-flag"></i> FAQ</a></li>
<li><a href="/resetpassword.php?id={ids}"><i class="icon-flag"></i> Востановить пароль</a></li>
<li><a href="#"><i class="icon-flag"></i> Ещё</a></li>
<li><a href=""><i class="icon-flag"></i> Ваш баланс: {userbalance}руб</a></li>
</ul>
</div>
