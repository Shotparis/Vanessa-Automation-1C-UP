﻿#language: ru

@tree

Функционал: Основные документы подсистемы Производство

Как Администратор я хочу
работать с документами подсистемы Производство 
чтобы отражать процессы производства 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Списания на расходы
* Переход в Подсистему Производство 
	И В командном интерфейсе я выбираю 'Производство' 'Списания на расходы'
	Тогда открылось окно 'Списания на расходы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Создание документа
	Тогда открылось окно 'Списание на расходы (создание)'
* Вкладка Основное 
	Когда открылось окно 'Списание на расходы (создание)'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'      |
		| '000000001' | 'ООО "Мебельстрой"' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	Когда открылось окно 'Списание на расходы (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Производство' |
	И в таблице "Список" я выбираю текущую строку	
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '00-000004' | 'Склад выпечки' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Вкладка Товары
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю по строке 'говядина'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСерия"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСерия"
	И я перехожу к закладке с именем "Выбор"
	И в таблице "Серии" я перехожу к строке:
		 | 'Наименование' | 'Номер' | 
		 | 'ГОСТ_45422'   | '2 544' | 
	И в таблице "Серии" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,000'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыСтоимость"
	И в таблице "Товары" в поле с именем 'ТоварыСтоимость' я ввожу текст '345,00'
	И в таблице "Товары" я завершаю редактирование строки
* Запись
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Запоминание для проверки
	И я запоминаю значение поля "Номер" как "$НомерСписаниеНаРасходы$"
* Запись и закрытие 	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Списание на расходы СЕ00-00000001 от *' в течение 20 секунд
* Проверка создания 
	И таблица  "Список" содержит строки:
		| 'Номер'            |
		| '$НомерСписаниеНаРасходы$'|
	


Сценарий: Создание документа Производство продукции 
	И я закрываю все окна клиентского приложения
* Переход в Подсистему Производство
	И В командном интерфейсе я выбираю 'Производство' 'Производство продукции'
	Тогда открылось окно 'Производство продукции'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Создание документа 
	Тогда открылось окно 'Производство продукции (создание)'
* Вкладка Основное
	Когда открылось окно 'Производство продукции (создание)'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000002' | 'ВМК ООО'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Производство' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '00-000004' | 'Склад выпечки' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Вклдака Выходные изделия 
	Когда открылось окно 'Производство продукции (создание) *'
	И я перехожу к закладке с именем "ГруппаВыходныеИзделия"
	И в таблице "ВыходныеИзделия" я выбираю текущую строку	

	И в таблице "ВыходныеИзделия" я нажимаю кнопку выбора у реквизита с именем "ВыходныеИзделияНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| 'Код'         | 'Наименование' |
		| '00-00000054' | 'Сэндвичи '    |
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование'        |
		| '00-00000056' | 'Сэндвич с говядиной' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Производство продукции (создание) *'
	И в таблице "ВыходныеИзделия" из выпадающего списка с именем "ВыходныеИзделияНоменклатура" я выбираю точное значение 'Сэндвич с говядиной'
	И в таблице "ВыходныеИзделия" я активизирую поле с именем "ВыходныеИзделияХарактеристика"
	И в таблице "ВыходныеИзделия" я нажимаю кнопку выбора у реквизита с именем "ВыходныеИзделияХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Производство продукции (создание) *'
	И в таблице "ВыходныеИзделия" я активизирую поле с именем "ВыходныеИзделияСерия"
	И в таблице "ВыходныеИзделия" я нажимаю кнопку выбора у реквизита с именем "ВыходныеИзделияСерия"
	И я перехожу к закладке с именем "Выбор"
	И в таблице "Серии" я перехожу к строке:
		| 'Годен до'            | 'Дата производства'   | 'Наименование' | 'Номер' | 'Остаток' | 'Серия' |
		| '12.12.2021 14:30:42' | '10.12.2021 14:30:42' | '6018'         | '6 018' | '10,000'  | '6018'  |
	И в таблице "Серии" я выбираю текущую строку
	Тогда открылось окно 'Производство продукции (создание) *'
	И в таблице "ВыходныеИзделия" я активизирую поле с именем "ВыходныеИзделияКоличествоУпаковок"
	И в таблице "ВыходныеИзделия" в поле с именем 'ВыходныеИзделияКоличествоУпаковок' я ввожу текст '78,000'
	И в таблице "ВыходныеИзделия" я завершаю редактирование строки
* Ввод и перенос значений качественных показателей 
// На данный момент раздел не работает, жду исправлений
* Записать 	
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Запоминание для проверки 
	И я запоминаю значение поля "Номер" как "$НомерППродукции$"
* Проведение и закрытие 
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Производство продукции СЕ00-00000006 от *' в течение 20 секунд
* Проверка создания
	И таблица  "Список" содержит строки:
		| 'Номер' |
		| '$НомерППродукции$'   |


Сценарий: Создание документа Учет продукции
	И я закрываю все окна клиентского приложения
* Переход в Подсистему Производство
	И В командном интерфейсе я выбираю 'Производство' 'Учет продукции'
	Тогда открылось окно 'Учет продукции'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Создание документа 
	Тогда открылось окно 'Учет продукции (создание)'
* Вкладка Основное 
	Когда открылось окно 'Учет продукции (создание)'
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000002' | 'Смена2'       |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Учет продукции (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000003' | 'ООО ВМК'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Учет продукции (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Производство' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Учет продукции (создание) *'
	Когда открылось окно 'Учет продукции (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'      |
		| '00-000020' | 'Склад лаборатории' |
	И в таблице "Список" я выбираю текущую строку		
	Тогда открылось окно 'Учет продукции (создание) *'
	И я перехожу к закладке с именем "ГруппаВыходныеИзделия"
* Вкладка Товары
	И в таблице "Продукция" я нажимаю на кнопку с именем 'ПродукцияДобавить'
	Когда открылось окно 'Учет продукции (создание) *'
	И в таблице "Продукция" я нажимаю кнопку выбора у реквизита с именем "ПродукцияНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| 'Код'         | 'Наименование' |
		| '00-00000054' | 'Сэндвичи '    |
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование'        |
		| '00-00000056' | 'Сэндвич с говядиной' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Учет продукции (создание) *'
	И в таблице "Продукция" из выпадающего списка с именем "ПродукцияНоменклатура" я выбираю точное значение 'Сэндвич с говядиной'	
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияХарактеристика"
	И в таблице "Продукция" я нажимаю кнопку выбора у реквизита с именем "ПродукцияХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'     |
		| '000000087' | 'Невегетарианский' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияСерия"
	И в таблице "Продукция" я нажимаю кнопку выбора у реквизита с именем "ПродукцияСерия"
	Тогда открылось окно 'Серии номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Гост_Сэнд'    |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияСпецификация"
	И в таблице "Продукция" я нажимаю кнопку выбора у реквизита с именем "ПродукцияСпецификация"
	Тогда открылось окно 'Ресурсные спецификации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'       |
		| '00-000036' | 'Сэндвич в упаковке' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Продукция" я завершаю редактирование строки
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияКоличество"
	И в таблице "Продукция" в поле с именем 'ПродукцияКоличество' я ввожу текст '55,000'
	И в таблице "Продукция" я завершаю редактирование строки
* Запись
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Запоминание для проверки
	И я запоминаю значение поля "Номер" как "$НомерУчетПродукции$"
* Проведение и закрытие
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Учет продукции СЕ00-00000001 от *' в течение 20 секунд
* Проверка создания
	И таблица "Список" содержит строки:
		| 'Номер'                |
		| '$НомерУчетПродукции$' |

Сценарий: Создание документа Заказы на производство
* Захожу в Производство Заказы на производство
	И В командном интерфейсе я выбираю 'Производство' 'Заказы на производство'
	Тогда открылось окно 'Заказы на производство'
* Создаю
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ на производство (создание)'
* Заполняю вкладку Основное
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заказ на производство (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000002' | 'ВМК ООО'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заказ на производство (создание) *'
	И я нажимаю кнопку выбора у поля с именем "ДатаВыпуска"
	И в поле с именем 'ДатаВыпуска' я ввожу текст '02.12.2020'
	И в поле с именем 'Комментарий' я ввожу текст 'йо'
* Заполняю вкладку Продукция
	И я перехожу к закладке с именем "ГруппаПродукция"
	И в таблице "Продукция" я добавляю строку
	Когда открылось окно 'Заказ на производство (создание) *'
	И в таблице "Продукция" я нажимаю кнопку выбора у реквизита с именем "ПродукцияНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я разворачиваю текущую строку
	И я нажимаю на кнопку с именем 'ФормаДерево'
	И в таблице "Список" я разворачиваю строку:
		| 'Код'         | 'Наименование' |
		| '00-00000054' | 'Сэндвичи '    |
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование'        |
		| '00-00000056' | 'Сэндвич с говядиной' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ на производство (создание) *'
	И в таблице "Продукция" из выпадающего списка с именем "ПродукцияНоменклатура" я выбираю точное значение 'Сэндвич с говядиной'
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияХарактеристика"
	И в таблице "Продукция" я нажимаю кнопку выбора у реквизита с именем "ПродукцияХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'     |
		| '000000087' | 'Невегетарианский' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ на производство (создание) *'
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияКоличествоУпаковок"
	И в таблице "Продукция" в поле с именем 'ПродукцияКоличествоУпаковок' я ввожу текст '23,000'
	И в таблице "Продукция" я завершаю редактирование строки
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияКоличество"
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияСпецификация"
	И в таблице "Продукция" я выбираю текущую строку
	И в таблице "Продукция" я нажимаю кнопку выбора у реквизита с именем "ПродукцияСпецификация"
	Тогда открылось окно 'Ресурсные спецификации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'       |
		| '00-000036' | 'Сэндвич в упаковке' |
	И в таблице "Список" я выбираю текущую строку	
* Провожу
	И я нажимаю на кнопку с именем 'ФормаПровести'
* Провожу и закрываю
	И в таблице "Продукция" я завершаю редактирование строки
	И в таблице "Продукция" я активизирую поле с именем "ПродукцияНомерСтроки"
	И я выбираю пункт контекстного меню с именем 'ПродукцияКонтекстноеМенюУдалить' на элементе формы с именем "Продукция"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'


Сценарий: Создание документа Передача материалов в производство
* Захожу в производство Передача материалов в производство
	И В командном интерфейсе я выбираю 'Производство' 'Передача материалов в производство'
	Тогда открылось окно 'Передача материалов в производство'
* Создаю документ
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Передача материалов в производство (создание)'
* Заполняю
	И я нажимаю кнопку выбора у поля с именем "Отправитель"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '00-000019' | 'Склад 1 '     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Передача материалов в производство (создание) *'
	Тогда открылось окно 'Передача материалов в производство (создание) *'
	Когда открылось окно 'Передача материалов в производство (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000001' | 'Обеспечение'  |
	И в таблице "Список" я выбираю текущую строку	
	Тогда открылось окно 'Передача материалов в производство (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'      |
		| '000000013' | 'ООО "Наши машины"' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Передача материалов в производство (создание) *'
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Принято'
	И я нажимаю кнопку выбора у поля с именем "ДатаПоступления"
	И в поле с именем 'ДатаПоступления' я ввожу текст '01.01.2021  0:00:00'
* Перехожу на вкладку Материалы
	И я перехожу к закладке с именем "ГруппаСтраницаМатериалы"
	И в таблице "Товары" я добавляю строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
	Когда открылось окно 'Передача материалов в производство (создание) *'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| 'Код'         | 'Наименование'     |
		| '00000000020' | 'Бумажные изделия' |
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование' |
		| '00-00000105' | 'Блокнот'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Передача материалов в производство (создание) *'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю точное значение 'Блокнот'	
	Тогда открылось окно 'Передача материалов в производство (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5,000'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоДопЕдиниц"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоДопЕдиниц' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
* Перехожу на вкладку Дополнительно
	И я перехожу к закладке с именем "ГруппаСтраницаДополнительно"
	И я нажимаю кнопку выбора у поля с именем "Ответственный"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" я перехожу к строке:
		| 'Полное имя'    |
		| 'Администратор' |
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Передача материалов в производство (создание) *'
* Провожу
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Когда открылось окно 'Передача материалов в производство (создание) *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыНомерСтроки"
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
* Провожу и закрываю
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Передача материалов в производство (создание) *' в течение 20 секунд	
	


