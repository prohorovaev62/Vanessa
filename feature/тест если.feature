﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: конструкция Если
* Проверка видимости элемента
	Если элемент формы с именем "Company" не доступен
		И я нажимаю кнопку выбора у поля с именем 'Company'
	И я нажимаю кнопку выбора у поля с именем 'Вид цены'	
		
*Сверка с макетами не совпадают строки

*Обернуть сушествующий шаг
Если я нажимаю кнопку выбора у поля с именем 'Company' Тогда
	И я закрываю текущее окно
	
Сценарий: переменные локальные

И я запоминаю заголовок текущего окна как "ЗаголовокОкна"
И я вывожу значение переменной "ЗаголовокОкна"
Тогда таблица 'List' стала равной:
	| 'Код' | 'Наименование'                                         | 'Вид'         | 'Вид взаиморасчетов'         |
	| '1'   | '$ЗаголовокОкна$'                                      | 'Обычное'     | 'По документам'              |
	| '2'   | 'Индивидуальное соглашение 1 (расчет по соглашениям)'  | 'Обычное'     | 'По соглашениям'             |
	| '3'   | 'Индивидуальное соглашение 2 (расчет по соглашениям)'  | 'Обычное'     | 'По соглашениям'             |
	| '4'   | 'Стандартное соглашение 1'                             | 'Стандартное' | 'По соглашениям'             |
	| '5'   | 'Общее соглашение (расчет по стандартным соглашениям)' | 'Обычное'     | 'По стандартным соглашениям' |
	| '6'   | 'Соглашение с поставщиком 1'                           | 'Обычное'     | 'По соглашениям'             |
	| '7'   | 'Соглашение с поставщиком 2'                           | 'Обычное'     | 'По соглашениям'             |
	| '8'   | 'Розничное'                                            | 'Обычное'     | 'По соглашениям'             |
	| '9'   | 'Розничный клиент 1'                                   | 'Обычное'     | 'По соглашениям'             |

Сценарий: переменные глобальные

И я закрываю все окна клиентского приложения
И я удаляю переменную '$$Ссылка товар без характеристик$$'
И я сохраняю навигационную ссылку текущего окна в переменную "$$Ссылка товар без характеристик$$"
И Я открываю навигационную ссылку "$$Ссылка товар без характеристик$$"
