#language: ru

@tree

Функционал: Документы подсистемы Склад

Как Администратор я хочу
создавать документы  
чтобы отражать бизнес процессы 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Создание документа Заявка на поставку материалов
* Переход в Подсистему Склад
	И В командном интерфейсе я выбираю 'Склад' 'Заявка на поставку материалов'
	Тогда открылось окно 'Заявка на поставку материалов'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Создание документа
	Тогда открылось окно 'Заявка на поставку материалов (создание)'
* Вкладка Основное
	Когда открылось окно 'Заявка на поставку материалов (создание)'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку	
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Производство' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Когда открылось окно 'Заявка на поставку материалов (создание) *'
	Когда открылось окно 'Заявка на поставку материалов (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'      |
		| '00-000020' | 'Склад лаборатории' |
	И в таблице "Список" я выбираю текущую строку	
* Вкладка Материалы
	И я перехожу к закладке с именем "ГруппаМатериалы"
	И в таблице "Материалы" я активизирую поле с именем "МатериалыНоменклатура"
	Когда открылось окно 'Заявка на поставку материалов (создание) *'
	И в таблице "Материалы" я нажимаю кнопку выбора у реквизита с именем "МатериалыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование' |
		| '00-00000065' | 'Говядина'     |
	И в таблице "Список" я выбираю текущую строку	
	И в таблице "Материалы" я активизирую поле с именем "МатериалыХарактеристика"
	И в таблице "Материалы" я нажимаю кнопку выбора у реквизита с именем "МатериалыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000091' | 'Из коровы'    |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Материалы" я активизирую поле с именем "МатериалыКачество"
	И в таблице "Материалы" я нажимаю кнопку выбора у реквизита с именем "МатериалыКачество"
	Тогда открылось окно 'Качество номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '00-000005' | 'Первый сорт'  |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Материалы" я активизирую поле с именем "МатериалыКоличествоУпаковок"
	И в таблице "Материалы" в поле с именем 'МатериалыКоличествоУпаковок' я ввожу текст '55,000'
	И в таблице "Материалы" я завершаю редактирование строки
* Запись	
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Запоминание
	И я запоминаю значение поля "Номер" как "$НомерЗНМ$"
* Проведение и закрытие	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заявка на поставку материалов СЕ00-00000007 от *' в течение 20 секунд
* Проверка 
	И таблица  "Список" содержит строки:
		| 'Номер' |
		| '$НомерЗНМ$'   |


Сценарий: Корректировка заявки на основании Заявки
* Переход в Подсистему Склад
	И В командном интерфейсе я выбираю 'Склад' 'Заявка на поставку материалов'
	Тогда открылось окно 'Заявка на поставку материалов'
	И в таблице "Список" я выбираю текущую строку
* Переход в документ Заявки
	Тогда открылось окно '*'
* Проверка переноса основной информации
	И я запоминаю значение поля "Организация" как "$ОрганизацияЗНМ$"
	И я нажимаю на кнопку с именем 'ФормаДокументКорректировкаЗаявкиНаПоставкуСоздатьНаОсновании'
* Создание корректировки	
	Тогда открылось окно 'Корректировка заявки на поставку (создание)'
	И значение поля "Организация" содержит текст "$ОрганизацияЗНМ$"
* Вкладка Материалы
	И я перехожу к закладке с именем "ГруппаМатериалы"
* Запись
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Запоминание номера
	И я запоминаю значение поля "Номер" как "$НомерКЗ$"
* Запись и закрытие	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Корректировка заявки на поставку СЕ00-00000005 от *' в течение 20 секунд
	И В командном интерфейсе я выбираю 'Склад' 'Корректировка заявки на поставку'
* Проверка
	И таблица  "Список" содержит строки:
		| 'Номер' |
		| '$НомерКЗ$'   |
	

Сценарий: Создание документа Передача готовой продукции 
* Переход в Подсистему Склад
	И В командном интерфейсе я выбираю 'Склад' 'Передача готовой продукции'
	Тогда открылось окно 'Передача готовой продукции'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Создание документа
	Тогда открылось окно 'Передача готовой продукции (создание)'
* Вкладка Основное	
	Когда открылось окно 'Передача готовой продукции (создание)'
	Когда открылось окно 'Передача готовой продукции (создание)'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	Когда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку		
	И я нажимаю кнопку выбора у поля с именем "СкладОтправитель"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '00-000004' | 'Склад выпечки' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем "СкладПолучатель"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'            |
		| '000000011' | 'Склад готовой продукции' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Вкладка Товары
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование'        |
		| '00-00000056' | 'Сэндвич с говядиной' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Товары" я активизирую поле с именем "ТоварыХарактеристика"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСерия"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСерия"
	И в таблице "Серии" я перехожу к строке:
		 | 'Наименование' | 'Номер' |
		 | '6019'         | '6 019' |
	И в таблице "Серии" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКачество"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыКачество"
	Тогда открылось окно 'Качество номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'     |
		| '00-000048' | 'Свежая продукция' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '55,000'
	И в таблице "Товары" я завершаю редактирование строки
* Запись
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Запоминание
	И я запоминаю значение поля "Номер" как "$НомерПГП$"	
* Проведение и закрытие
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Передача готовой продукции СЕ00-00000001 от *' в течение 20 секунд
* Проверка
	И таблица  "Список" содержит строки:
		| 'Номер' |
		| '$НомерПГП$'   |



Сценарий: Создание документа Перемещение
* Переход в Подсистему Склад
	И В командном интерфейсе я выбираю 'Склад' 'Перемещение'
	Тогда открылось окно 'Перемещение'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Создание документа
	Тогда открылось окно 'Перемещение (создание)'
* Вкладка Основное
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	Когда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	И я нажимаю кнопку выбора у поля с именем "СкладОтправитель"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '00-000004' | 'Склад выпечки' |
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'      |
		| '000000002' | 'Запасы материалов' |
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '00-000004' | 'Склад выпечки' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем "СкладПолучатель"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'            |
		| '000000011' | 'Склад готовой продукции' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Принято'
	И я нажимаю кнопку выбора у поля с именем "ДатаПоступления"
	И в поле с именем 'ДатаПоступления' я ввожу текст '11.02.2022  0:00:00'
* Вкладка Товары
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование' |
		| '00-00000065' | 'Говядина'     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Товары" я активизирую поле с именем "ТоварыХарактеристика"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСерия"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСерия"
	И в таблице "Серии" я перехожу к строке:
		| 'Наименование' | 'Номер' | 
		| 'ГОСТ_45422'   | '2 544' | 
	И в таблице "Серии" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '55,000'
	И в таблице "Товары" я завершаю редактирование строки
* Запись
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Запоминание для проверки
	И я запоминаю значение поля "Номер" как "$НомерППродукции$"
* Проведение и закрытие	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Перемещение СЕ00-00000001 от *' в течение 20 секунд
* Проверка
	И таблица  "Список" содержит строки:
		| 'Номер' |
		| '$НомерППродукции$'   |
	