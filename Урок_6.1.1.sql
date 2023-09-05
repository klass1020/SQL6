/*
Создайте таблицу users_old, аналогичную таблице users. Создайте процедуру, с помощью которой можно переместить любого (одного) пользователя из таблицы users в таблицу users_old. (использование транзакции с выбором commit или rollback – обязательно)*/

CREATE PROCEDURE `new_procedure` (in num int)
BEGIN
insert into users_old(firstname, lastname, email) 
SELECT firstname, lastname, email  FROM lesson_4.users Where id = num;
delete from users where id = num;
commit;
END
