#language:ru
@test

Функционал: тестирование сервиса Helpdesk
  - Создание тикета с высоким приоритетом.
  - Негативная проверка: перевода статуса тикета из "Закрыт" в "Открыт".

  Сценарий: создание тикета
    * сгенерировать переменные
      | title           | EEEEEEEEEEEE      |
      | submitter_email | EEEEEEE@EEEDDD.EE |
      | status          | 4                 |
      | description     | EEEEEEEEEEEEEEEE  |
      | priority        | 1                 |
      | queue           | 1                 |

    * создать запрос
      | method | url                                               | body                 |
      | POST   | https://at-sandbox.workbench.lanit.ru/api/tickets | dataForHelpdesk.json |
    * добавить header
      | Content-Type | application/json |
    * отправить запрос
    * статус код 201
    * извлечь данные
      | id | $.id |

    * создать запрос
      | method | url                                             | body                       |
      | POST   | https://at-sandbox.workbench.lanit.ru/api/login | loginPasswordHelpdesk.json |
    * добавить header
      | Content-Type | application/json |
    * отправить запрос
    * статус код 200
    * извлечь данные
      | token    | $.token   |

    * сгенерировать переменные
      | title           | EEEEEEEEEEEE      |
      | submitter_email | EEEEEEE@EEEDDD.EE |
      | status          | 1                 |
      | description     | EEEEEEEEEEEEEEEE  |
      | priority        | 1                 |
      | queue           | 1                 |

    * создать запрос
      | method | url                                                     | body                 |
      | PUT   | https://at-sandbox.workbench.lanit.ru/api/tickets/${id}  | dataForHelpdesk.json |

    * добавить header
      |  Authorization  |  Token ${token}  |
      | Content-Type | application/json |
    * отправить запрос
    * статус код 422
