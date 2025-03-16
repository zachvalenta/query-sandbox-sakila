Just a repo to practice SQL.

Using [Sakila](https://github.com/jOOQ/sakila) as it's a canonical dataset that LLMs are likely to be familiar with.

How I created the db:
```sh
sqlite3 sakila.sqlite < schema.sql  # https://github.com/jOOQ/sakila/blob/main/sqlite-sakila-db/sqlite-sakila-schema.sql
sqlite3 sakila.sqlite < data.sql    # https://github.com/jOOQ/sakila/blob/main/sqlite-sakila-db/sqlite-sakila-insert-data.sql
```
