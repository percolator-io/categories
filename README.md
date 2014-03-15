[![Build Status](https://travis-ci.org/percolator-io/categories.png?branch=master)](https://travis-ci.org/percolator-io/categories)

# Percolator.io categories

## Формат категорий

```yaml
- id: web_development
  name: Веб-разработка
  query: web

  subcategories:
    - id: ruby_on_rails
      name: Ruby on Rails
      query: rails activerecord active_record
```

* id: уникальный идентификатор, должен достаточно описывать категорию, не должен изменяться,
      содержит строчные латинские буквы, цифры, подчеркивание
* name: заголовок категории на сайте
* query: запрос, построенный с помощью
  [simple-query-string-query](http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/query-dsl-simple-query-string-query.html).
  Поиск осуществляется по _title_, _description_, _keywords_, _host_ html страницы.
* subcategories: содержит массив подкатегорий, необязательный параметр

## Добавление категорий

* Форкнуть репозиторий
* Составить запрос: поле поиска на percolator.io поддерживает simple-query-string-query
* Добавить категорию в файл `data/categories.yml`.
* Pull-request
* все эти операции можно осуществить через веб интерфейс гитхаба

## Правила

+ Каждая категория должна охватывать большую предметную область
+ В поле query должны быть только самые необходимые шаблоны
+ Не плодить подкатегории
+ Не удалять категории
+ Не менять id
+ Должны проходить тесты

## TODO

+ обавить поддержку хранения категорий в файлах и папках
