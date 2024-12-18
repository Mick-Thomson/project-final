## [REST API](http://localhost:8080/doc)

## Концепция:

- Spring Modulith
    - [Spring Modulith: достигли ли мы зрелости модульности](https://habr.com/ru/post/701984/)
    - [Introducing Spring Modulith](https://spring.io/blog/2022/10/21/introducing-spring-modulith)
    - [Spring Modulith - Reference documentation](https://docs.spring.io/spring-modulith/docs/current-SNAPSHOT/reference/html/)

```
  url: jdbc:postgresql://localhost:5432/jira
  username: jira
  password: JiraRush
```

- Есть 2 общие таблицы, на которых не fk
    - _Reference_ - справочник. Связь делаем по _code_ (по id нельзя, тк id привязано к окружению-конкретной базе)
    - _UserBelong_ - привязка юзеров с типом (owner, lead, ...) к объекту (таска, проект, спринт, ...). FK вручную будем
      проверять

## Аналоги

- https://java-source.net/open-source/issue-trackers

## Тестирование

- https://habr.com/ru/articles/259055/

Список выполненных задач:
1. 1-я зажача. Разобраться со структурой проекта (onboarding).
2. 2-я задача. Удалить социальные сети: vk, yandex.
3. 3-я задача. Вынести чувствительную информацию в отдельный проперти файл.
4. 5-я задача. Написать тесты для всех публичных методов контроллера ProfileRestController.
5. 6-я задача. Сделать рефакторинг метода upload() класса FileUtil, для современного подхода работы с файловой системмой.
6. 7-я задача. Добавить новый функционал: добавления тегов к задаче (REST API + реализация на сервисе).
7. 8-я задача. Добавить подсчет времени, сколько задача находилась в работе и тестировании.
8. 9-я зажача. Написать Dockerfile для основного сервера.
9. 10-я задача. Написать docker-compose файл для запуска контейнера сервера вместе с БД и nginx.

.env file:
```
#datasource:
DB_URL=jdbc:postgresql://db:5432/jira
DB_USERNAME=jira
DB_PASSWORD=JiraRush
#security:
GITHUB_CLIENT_ID=3d0d8738e65881fff266
GITHUB_CLIENT_SECRET=0f97031ce6178b7dfb67a6af587f37e222a16120
GOOGLE_CLIENT_ID=329113642700-f8if6pu68j2repq3ef6umd5jgiliup60.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=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
GITLAB_CLIENT_ID=b8520a3266089063c0d8261cce36971defa513f5ffd9f9b7a3d16728fc83a494
GITLAB_CLIENT_SECRET=e72c65320cf9d6495984a37b0f9cc03ec46be0bb6f071feaebbfe75168117004
#mail:
MAIL_HOST=smtp.gmail.com
MAIL_USERNAME=jira4jr@gmail.com
MAIL_PASSWORD=zdfzsrqvgimldzyj
MAIL_PORT=587
#postgres:
POSTGRES_USER=jira
POSTGRES_PASSWORD=JiraRush
POSTGRES_DB=jira
PGDATA=/var/lib/postgresql/data/pgdata
```