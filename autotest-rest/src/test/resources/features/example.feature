#language:ru

Функционал: Тестирование сервиса PetStore
  - Пример теста демонстрирует создание нового юзера POST запросом с телом из json файла,
      значения которого заполняем сгенерированным значениями
  - После создания нового юзера, GET запросом запрашиваем данного юзера и проверяем,
      что его данные соответствует данными из тела запроса

  Сценарий: Создание юзера

    # Первая часть теста - Создание юзера
    * снегерировать переменные
      | id         | 0                 |
      | username   | EEEEEEEE          |
      | firstName  | EEEEEEEE          |
      | lastName   | EEEEEEEE          |
      | email      | EEEEEEE@EEEDDD.EE |
      | password   | DDDEEEDDDEEE      |
      | phone      | +7DDDDDDDDDD      |
      | userStatus | 1                 |
    # Создаем юзера
    * создать запрос
      | method | path  | bodyFromFile    |
      | POST   | /user | createUser.json |
    * добавить header
      | Content-Type | application/json |
    * отправить запрос
    * статус код 200
    * извлечь данные
      | user_id | $.message |


    # Вторая часть теста - запрос юзера и проверка его данных
    * создать запрос
      | method | path              |
      | GET    | /user/${username} |
    * добавить header
      | Accept | application/json |
    * отправить запрос
    * статус код 200
    # Тут периодически может кидать 404

    * извлечь данные
      | resp_firstname | $.firstName |
      | resp_user_id   | $.id        |

    * сравнить значения
      | ${user_id}   | == | ${resp_user_id}   |
      | ${firstName} | == | ${resp_firstname} |