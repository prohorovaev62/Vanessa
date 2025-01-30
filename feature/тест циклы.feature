﻿#language: ru

@tree

Функционал: <описание фичи>


Сценарий: изменения кол-во во всех строках табл
//И для каждой строки таблицы "ItemList" я выполняю используя колонку "N"
//	И в таблице "ItemList" в поле "Количество" я ввожу текст "15"
	
//Сценарий: удалине строк в табл
//И пока в таблице "ItemList" количество строк ">" 0 Тогда
//	И в таблице "ItemList" я удаляю строку

//Сценарий: изменение вида цен по условиям
//И для каждой строки таблицы "ItemList" я выполняю
//	Если таблица "ItemList" содержит строки Тогда
//		| 'Номенклатура'             | 'Характеристика'            | 'Вид цены'          |
//		| 'Товар с характеристиками' | 'S/Красный'                 | 'Ручное назначение' |
//		| 'Товар с характеристиками' | 'S/Красный'                 | 'Ручное назначение' |
//		И в таблице 'ItemList' я  перехожу к строке:
//			| 'Номенклатура'             | 'Характеристика' | 'Вид цены'          |
//			| 'Товар с характеристиками' | 'S/Красный'      | 'Ручное назначение' |
//		И в таблице 'ItemList' я нажимаю кнопку выбора у реквизита с именем 'ItemListPriceType'
//		И в таблице 'List' я перехожу к строке:
//			| "Валюта" | "Код" | "Наименование"      | "Ссылка"            |
//			| "USD"    | "3"   | "Цена поставщика 1" | "Цена поставщика 1" |
//		И в таблице 'List' я выбираю текущую строку
//И таблица  "ItemList" не содержит строки:
//	| 'Номенклатура'             | 'Характеристика' | 'Вид цены'          |
//	| 'Товар с характеристиками' | 'S/Красный'      | 'Ручное назначение' |
		
		
//	Сценарий: перебор элементов справоника номенклатура
//	И в таблице "List" я перехожу к первой строке
//	И для каждой строки таблицы "List" я выполняю
//		И в таблице "List" я выбираю текущую строку
//		Тогда не появилось окно предупреждения системы
//		И я закрываю текущее окно
		
Сценарий: 	создание большого объема данных (спр Ед. измерения)
 И Я запоминаю значение выражения '1' в переменную "Шаг"
 И я делаю 10 раз
	И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
	И Я запоминаю значение выражения '"ед.изм." + $Шаг$' в переменную "ЕдиницаИзмерения"
	И я проверяю или создаю для справочника "Units" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Item' | 'Quantity' | 'BasisUnit' | 'UOM' | 'Description_en'   | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '{"e1cib/data/Catalog.Units?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | ''     | 1          | ''          | ''    | 'ЕдиницаИзмерения' | ''                 | ''               | ''               |          |          |          |          |         |

