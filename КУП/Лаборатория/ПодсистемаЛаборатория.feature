﻿#language: ru



Функционал: Создание документа Значения качественных показателей

Как Лаборант я хочу
Создать документ Значения качественных показателей 
чтобы использовать их в работе

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Создание документа Значения качественных показателей
* Переход в Подсистему Лаборатория
	И В командном интерфейсе я выбираю 'Лаборатория' 'Значения качественных показателей'
	Тогда открылось окно 'Значения качественных показателей'
* Создаю
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Значения качественных показателей (создание)'
* Заполняю 
	Когда открылось окно 'Значения качественных показателей (создание)'
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Распоряжение'
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| 'Код'         | 'Наименование' |
		| '00-00000054' | 'Сэндвичи '    |
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование'        |
		| '00-00000056' | 'Сэндвич с говядиной' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Значения качественных показателей (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Характеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Значения качественных показателей (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Серия"
	И я перехожу к закладке с именем "Выбор"
	И в таблице "Серии" я выбираю текущую строку
	Тогда открылось окно 'Значения качественных показателей (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	Когда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку	
	Тогда открылось окно 'Значения качественных показателей (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '00-000003' | 'ЕЛАЙ СПК'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Значения качественных показателей (создание) *'

	Тогда открылось окно 'Значения качественных показателей (создание) *'
	И я перехожу к закладке с именем "ГруппаКачественныеПоказатели"
	И в таблице "Показатели" я нажимаю на кнопку с именем 'ПоказателиЗаполнитьПоказатели'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Значения качественных показателей (создание) *'
	И в таблице "Показатели" я нажимаю на кнопку с именем 'ПоказателиЗаполнитьПоказатели'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Значения качественных показателей (создание) *'
	И в таблице "Показатели" я активизирую поле с именем "ПоказателиЗначениеПоказателя"
	И в таблице "Показатели" я выбираю текущую строку
	И в таблице "Показатели" в поле с именем 'ПоказателиЗначениеПоказателя' я ввожу текст '23'
	И в таблице "Показатели" я завершаю редактирование строки
	И в таблице "Показатели" я перехожу к строке:
		| 'N' | 'Единица измерения' | 'Показатель'   |
		| '2' | '%'                 | 'Жирность (Т)' |
	И в таблице "Показатели" я выбираю текущую строку
	И в таблице "Показатели" в поле с именем 'ПоказателиЗначениеПоказателя' я ввожу текст '34,00'
	И в таблице "Показатели" я завершаю редактирование строки
* Провожу
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно '*'
	И я перехожу к закладке с именем "ГруппаОсновное"
* Запоминаю
	И я запоминаю значение поля "Номер" как "$НомерЗКП$"
* Провожу и закрываю
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	
	

Сценарий: Создание Качественного показателя
//  Добавление сценария с выбором типа данных вызывает затрудния, данный момент тестируется вручную
* Переход в Подсистему Лаборатория
	И В командном интерфейсе я выбираю 'Лаборатория' 'Качественные показатели'
* Переход в Качественные показатели
	Тогда открылось окно 'Качественные показатели'
* Создание элемента
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Качественные показатели (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Ударопрочность'
	И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
	Тогда открылось окно 'Выберите единицу измерения'
	И в таблице "Список" я перехожу к строке:
		| 'Международное сокращение' | 'Наименование' |
		| 'KGM'                      | 'кг'           |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Качественные показатели (создание) *' в течение 20 секунд
* Проверка создания
	И таблица "Список" содержит строки:
		| "Наименование" |
		|"Ударопрочность"|
	И я закрываю все окна клиентского приложения



Сценарий: Создание документа Установка нормативных значений
// После документ стоит удалить
	И я закрываю все окна клиентского приложения
* Переход в Подсистему Лаборатория 
	И В командном интерфейсе я выбираю 'Лаборатория' 'Установка нормативных значений показателей'
* Переход в документ Установка нормативных значений 
	Тогда открылось окно 'Установка нормативных значений показателей'
* Создание документа 
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Установка нормативных значений показателей (создание)'
* Вкладка Основное	
	Когда открылось окно 'Установка нормативных значений показателей (создание)'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000003' | 'ООО ВМК'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'		
	Когда открылось окно 'Установка нормативных значений показателей (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я разворачиваю текущую строку
	И я нажимаю на кнопку с именем 'ФормаДерево'
	И в таблице "Список" я разворачиваю строку:
		| 'Код'         | 'Наименование' |
		| '00-00000063' | 'Мясной завод' |
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование' |
		| '00-00000065' | 'Говядина'     |
	И в таблице "Список" я выбираю текущую строку	
	И я нажимаю кнопку выбора у поля с именем "Характеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'

	И я нажимаю кнопку выбора у поля с именем "Качество"
	Тогда открылось окно 'Качество номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '00-000005' | 'Первый сорт'  |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Вкладка Показатели	
	И я перехожу к закладке с именем "ГруппаПоказатели"
	И в таблице "ЗначенияПоказателей" я активизирую поле с именем "ЗначенияПоказателейЗначение"
	И в таблице "ЗначенияПоказателей" я выбираю текущую строку
	И в таблице "ЗначенияПоказателей" в поле с именем 'ЗначенияПоказателейЗначение' я ввожу текст '3,00'
	И в таблице "ЗначенияПоказателей" я перехожу к строке
			| 'Показатель'              |
			| 'Толщина подкожного жира' |
	И в таблице "ЗначенияПоказателей" в поле с именем 'ЗначенияПоказателейЗначение' я ввожу текст '31,00000'
	И в таблице "ЗначенияПоказателей" я завершаю редактирование строки
	Когда открылось окно '*'
	И я перехожу к закладке с именем "ГруппаОсновное"
	И я нажимаю на кнопку с именем 'ФормаПровести'	
* Номер
	И я запоминаю значение поля "Номер" как "$НомерУНЗ$"
* Проведение и закрытие	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Установка нормативных значений показателей СЕ00-00000001 от *' в течение 20 секунд
* Проверка
	И таблица  "Список" содержит строки:
		| 'Номер'        |
		| '$НомерУНЗ$'   |
* Удаление
	И я закрываю все окна клиентского приложения
	Когда В панели разделов я выбираю 'Закупки'
	И В командном интерфейсе я выбираю 'Лаборатория' 'Установка нормативных значений показателей'
	Тогда открылось окно 'Установка нормативных значений показателей'
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'
		