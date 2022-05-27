﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Заполнение шапки заказа

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий
 

Сценарий: Заполнение шапки заказа

И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Заказ (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И я нажимаю кнопку выбора у поля с именем "Покупатель"
Тогда открылось окно 'Контрагенты'
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'       |
	| '000000013' | 'Магазин "Продукты"' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
