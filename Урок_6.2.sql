/*Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи"*/
CREATE DEFINER=`root`@`localhost` PROCEDURE `hello`()
BEGIN
SELECT case 
		When current_time() > '12;00;00' and current_time()< '18:00;00' then 'добрый день'
        When current_time() > '06;00;00' and current_time()< '12:00;00' then 'доброе утро'
        When current_time() > '00;00;00' and current_time()< '06:00;00' then 'доброй ночи'
        ELSE 'добрый вечер'
        end as privet;
END