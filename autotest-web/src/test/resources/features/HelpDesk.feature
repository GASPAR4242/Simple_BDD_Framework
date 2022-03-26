#language:ru
@helpdesk

Функционал: тестирование helpdesk


  Сценарий:   - Редактирование созданного тикета (с прикреплением файла в созданный тикет).
  - Сохранение поискового запроса.

    * открыть url "https://at-sandbox.workbench.lanit.ru/"
    * инициализация страницы "Страница с общими элементами"
    * кликнуть на элемент "кнопка создать новый тикет"
    * переход на страницу "Страница создания тикета"
    * выбрать "Django Helpdesk" из выпадающего списка "выбрать очередь"
    * ввести в поле "поле заголовок" значение "новый тикет1"
    * ввести в поле "поле описание" значение "новое описание"
    * выбрать "4. Low" из выпадающего списка "выбрать приоритет"
    * ввести в поле "выбрать дату" значение "2022-03-11 00:00:00"
    * прикрепить файл "hello.txt" для тикета через кнопку "кнопка выберите файл"
    * ввести в поле "Почта" значение "example@gmail.com"
    * кликнуть на элемент "кнопка создать тикет"
    * переход на страницу "Страница с общими элементами"
    * кликнуть на элемент "кнопка авторизоваться"
    * переход на страницу "Страница авторизации"
    * ввести в поле "поле пользователь" значение "admin"
    * ввести в поле "поле пароль" значение "adminat"
    * кликнуть на элемент "кнопка подтвердить"
    * переход на страницу "Страница с общими элементами"
    * ввести в поле "поле поиска" значение "новый тикет1"
    * кликнуть на элемент "кнопка поиска"
    * переход на страницу "Страница поиска тикета"
    * кликнуть на элемент "тикет"
    * переход на страницу "Страница тикета"
    * кликнуть на элемент "кнопка изменить тикет"
    * переход на страницу "Страница редактирования тикета"
    * очистить поле "поле заголовок"
    * ввести в поле "поле заголовок" значение "отредактированный тикет"
    * очистить поле "поле описание"
    * ввести в поле "поле описание" значение "отредактированное описание"
    * кликнуть на элемент "кнопка сохранить изменения"
    * переход на страницу "Страница с общими элементами"
    * ввести в поле "поле поиска" значение "отредактированный тикет"
    * кликнуть на элемент "кнопка поиска"
    * переход на страницу "Страница поиска тикета"
    * кликнуть на элемент "кнопка начать сохранять поиск"
    * ввести в поле "имя сохранения поиска" значение "abcde12345"
    * кликнуть на элемент "чекбокс чтобы поиск был доступен другим"
    * кликнуть на элемент "кнопка подтвердить сохранение поиска"
