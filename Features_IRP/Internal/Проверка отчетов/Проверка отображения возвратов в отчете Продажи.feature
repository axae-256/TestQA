#language: ru

@tree
@Отчеты

Функционал: Проверка отображения возвратов в отчете D2001 Продажи

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Подготовка данных по возвратам
	Когда экспорт основных данных

	И я выполняю код встроенного языка на сервере без контекста
	"""bsl
		Документы.SalesReturn.НайтиПоНомеру(1001).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
	"""

Сценарий: Проверка отображения в отчете D2001 Продажи

	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Дата начала'        | 'Дата окончания'      | 'Значение'   | 'Использование' | 'Параметр' |
		| '01.05.2022 0:00:00' | '31.05.2022 23:59:59' | 'Этот месяц' | 'Да'            | 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersValue"
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersEndDate"
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersEndDate' я ввожу текст '31.05.2022  0:00:00'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersStartDate"
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersStartDate' я ввожу текст '01.05.2022  0:00:00'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И в таблице "SettingsComposerSettings" я перехожу к строке:
		| 'Использование' | 'Структура отчета'   |
		| 'Нет'           | '<Детальные записи>' |
	И я перехожу к закладке с именем "GroupFieldsSettings"
	И я перехожу к закладке с именем "SelectedFieldsSettingsOff"
	И я перехожу к закладке с именем "FilterSettingsOff"
	И я перехожу к закладке с именем "OrderSettingsOff"
	И я перехожу к закладке с именем "ConditionalAppearanceSettingsOff"
	И я перехожу к закладке с именем "OutputParametersSettingsOff"
	И в таблице "SettingsComposerSettings" я изменяю флаг с именем 'SettingsComposerSettingsUse'
	И в таблице "SettingsComposerSettings" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'


	Тогда Табличный документ "Result" равен макету "МакетПроверкаОтображенияВозвратовВОтчетеD2001Продажи.mxl"




		
