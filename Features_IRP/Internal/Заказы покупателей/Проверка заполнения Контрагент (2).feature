﻿#language: ru

@tree

Функционал: Проверка заполнения контрагента в Заказе покупателя

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	

Сценарий: Заполнение контрагента при выборе партнера
	*Заполнение партнера
		Когда открылось окно 'Заказ покупателя (создание)*'
		И я нажимаю кнопку выбора у поля с именем "Partner"
		Тогда открылось окно 'Партнеры'
		И я нажимаю на кнопку с именем 'FormList'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'         |
			| '10'  | 'Розничный покупатель' |
		И в таблице "List" я выбираю текущую строку

	Тогда поле с именем "LegalName" заполнено

Сценарий: Заполнение соглашения при выборе партнера
	*Заполнение партнера
		Когда открылось окно 'Заказ покупателя (создание)*'
		И я нажимаю кнопку выбора у поля с именем "Partner"
		Тогда открылось окно 'Партнеры'
		И я нажимаю на кнопку с именем 'FormList'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'         |
			| '10'  | 'Розничный покупатель' |
		И в таблице "List" я выбираю текущую строку

	Тогда поле с именем "Agreement" заполнено


Сценарий: Очистка контрагента при очистке партнера
	*Заполнение партнера
		Когда открылось окно 'Заказ покупателя (создание)*'
		И я нажимаю кнопку выбора у поля с именем "Partner"
		Тогда открылось окно 'Партнеры'
		И я нажимаю на кнопку с именем 'FormList'
		И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'         |
		| '10'  | 'Розничный покупатель' |
		И в таблице "List" я выбираю текущую строку
	* Очистка партнера
		Когда поле с именем "Partner" заполнено
		И я нажимаю кнопку очистить у поля с именем "Partner"
		Тогда элемент формы "Контрагент" стал равен ""



Сценарий: Очистка соглашения при очистке партнера
	*Заполнение партнера
		Когда открылось окно 'Заказ покупателя (создание)*'
		И я нажимаю кнопку выбора у поля с именем "Partner"
		Тогда открылось окно 'Партнеры'
		И я нажимаю на кнопку с именем 'FormList'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'         |
			| '10'  | 'Розничный покупатель' |
		И в таблице "List" я выбираю текущую строку
	* Очистка партнера
		Когда поле с именем "Partner" заполнено
		И я нажимаю кнопку очистить у поля с именем "Partner"
		Тогда элемент формы "Соглашение" стал равен ""

Сценарий: Проверка блокирования поля Контрагент, если не выбран Партнер
	*Заполнение партнера
		Когда открылось окно 'Заказ покупателя (создание)*'
		И я нажимаю кнопку выбора у поля с именем "Partner"
		Тогда открылось окно 'Партнеры'
		И я нажимаю на кнопку с именем 'FormList'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'         |
			| '10'  | 'Розничный покупатель' |
		И в таблице "List" я выбираю текущую строку
	* Очистка партнера
		Когда поле с именем "Partner" заполнено
		И я нажимаю кнопку очистить у поля с именем "Partner"
		И элемент формы "Контрагент" не доступен


		
		

		
	
	
