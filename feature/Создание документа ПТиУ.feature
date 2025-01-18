﻿#language: ru



Функционал: создание Поступления товаров

Как Менеджер по закупкам> я хочу
Создание ПТиУ
чтобы принять товар

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий
Сценарий: создание Поступления товаров
// создание
И я закрываю все окна клиентского приложения
* Открываем форму документа
	И В командном интерфейсе я выбираю "Закупки" "Поступления товаров"
	Тогда открылось окно "Поступления товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Поступление товара (создание)"
* Заполнение шапки
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
	Тогда элемент формы с именем 'Склад' стал равен "Малый"	
	И я нажимаю кнопку выбора у поля с именем 'Поставщик'
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование"              |
		| "000000012" | "Мосхлеб ОАО" |
	И в таблице 'Список' я выбираю текущую строку
	Когда открылось окно "Поступление товара (создание) *"
* Заполение ТЧ
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000006" | "Ботинки"      |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "200,00"
	И в таблице 'Товары' я завершаю редактирование строки
* проверка заполнения ТЧ
	Тогда таблица 'Товары' содержит строки:
		| 'Товар'   | 'Артикул' | 'Цена'     | 'Количество' | 'Сумма'      |
		| 'Ботинки' | '*'       | '2 000,00' | '200,00'     | '400 000,00' |
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
*номер
	И я запоминаю значение поля "Номер" как "$Номер$"
*закрываю документ
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Поступление товара * от *" в течение 20 секунд
*Проверка создания документа
	И таблица "Список" содержит строки по шаблону:
		| 'Номер'   |
		| '$Номер$' |

Сценарий: проверка наличия элемента справочника
И В командном интерфейсе я выбираю "Продажи" "Товары"
Тогда открылось окно "Товары"
И я нажимаю на кнопку с именем 'ФормаСписок'
И таблица "Список" содержит строки по шаблону:
		| 'Наименование' |
		| 'Торт'         |


	

