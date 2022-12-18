/*Работа с терминалом*/

/*Создадим пользователя*/
CREATE USER 'user'@'hostname';

/*Дадим доступ к базе данных*/
GRANT ALL PRIVILEGES ON VK.* To 'user'@'hostname' IDENTIFIED BY 'password';

mysqldump –u root –p ***** VK  > VK_BackUp.sql
mysql -u root -p ***** VK < VK_BackUp.sql

/*Лайки*/
select count(*) -- количество лайков
from likes
where media_id in ( -- все медиа записи таких пользователей
	select id 
	from media 
	where user_id in ( -- все пользователи младше 10 лет
		select 
			user_id
		-- 	, birthday
		from profiles as p
		where  YEAR(CURDATE()) - YEAR(birthday) < 10
	)
);

/*МЖ*/
select 
	gender
	, count(*)
from (
	select 
		user_id as user,
		(
			select gender 
			from vk.profiles
			where user_id = user
		) as gender
	from likes
) as dummy
group by gender;