Just a repo to practice SQL.

## Sakila

Using [Sakila](https://github.com/jOOQ/sakila) as it's a canonical dataset that LLMs are likely to be familiar with.

How I created the db:
```sh
sqlite3 sakila.sqlite < schema.sql  # https://github.com/jOOQ/sakila/blob/main/sqlite-sakila-db/sqlite-sakila-schema.sql
sqlite3 sakila.sqlite < data.sql    # https://github.com/jOOQ/sakila/blob/main/sqlite-sakila-db/sqlite-sakila-insert-data.sql
```

## MVP

I'd also like to create a dataset that can:

* be complete enough to demonstrate (virtually) every feature of SQL
* be small enough that it can easily fit in working memory

`data/tiny.csv` is the start of that effort.

## pedagogy

🗄️
* `blog/data-analyst.md`
* `OLTP.md` sqlite-utils

HISTORY
* things I tried in the past: baked data in Python startup https://github.com/zachvalenta/capp-denv-dotfiles/commit/66efbee657d28cdf6d046c7624b788fbffa9ac0e 💻 https://github.com/zachvalenta/query-sandbox
* what I'm doing now: 💻 https://github.com/zachvalenta/query-sandbox-sakila

SIZE CONTRAINTS https://github.com/zachvalenta/query-sandbox/blob/main/hf%20instructions.png
* Polars read from Hugging Face https://docs.pola.rs/user-guide/io/hugging-face/ https://pola.rs/posts/polars-hugging-face/
* storage limits: Github, csvbase

---

https://sqlcasefiles.com/ https://news.ycombinator.com/item?id=45952802
🗄️ `architecture.md` serverless > baked data

* https://selectstarsql.com/frontmatter.html#dataset
* https://pgexercises.com/gettingstarted.html https://github.com/AlisdairO/pgexercises/issues/28
* https://sql-playground.wizardzines.com/
* https://www.crunchydata.com/developers/tutorials
* https://sqlime.org/
* tldr: better at SQL if data 1) local 2) interesting
* small databases https://news.ycombinator.com/item?id=34558054
* example databases: Spanish, Sakila https://github.com/jOOQ/sakila/blob/main/sqlite-sakila-db/sqlite-sakila-schema.sql 📙 Beaulieau [41] https://www.softwareandbooz.com/introducing-bluebox-docker-a-living-postgresql-sample-database/
* connect to actual server: https://data.stackexchange.com/help https://sqlpd.com/ https://news.ycombinator.com/item?id=30631477
* playgrounds: PG exercises https://github.com/zachvalenta/pg-exercises https://jvns.ca/blog/2023/04/17/a-list-of-programming-playgrounds/

* https://github.com/Mozzo1000/booklogr
* https://tomcritchlow.com/2023/01/27/small-databases/
* https://realpython.com/contact-book-python-textual/
* Airtable?
* schema introspection https://highgrowthengineering.substack.com/p/why-is-dbt-so-important-
* https://github.com/centerofci/mathesar 🗄 dataclerk
* repos that need: golf, bookcase

TAXONOMY
* _personal data warehouse_: generated personal data https://simonwillison.net/2020/Nov/14/personal-data-warehouses/
* these always seem like a waste of time https://krausefx.com//blog/how-i-put-my-whole-life-into-a-single-database
* _personal database_: hand curated https://tomcritchlow.com/2022/01/26/electric-tables/ https://bofh.org.uk/2019/02/25/baking-with-emacs/

STATUS QUO
* user: web app
* admin: script/proc, visidata, GUI https://realpython.com/python-contact-book/#step-5-creating-new-contacts
* back office: ask admin, use Basedash https://softwareengineeringdaily.com/2020/10/12/basedash-low-code-database-editor-with-max-musing/ https://www.basedash.com/

IMPL
* check out the help section of pgcli, pgcli can now autocomplete joins?
* https://github.com/k1LoW/tbls
* parser https://news.ycombinator.com/item?id=32560039
* visidata for now and add constraints later?
* https://github.com/szktkfm/mdtt
* https://stackoverflow.com/questions/2732356/list-of-all-tables-with-a-relationship-to-a-given-table-or-view
* https://stackoverflow.com/questions/8094156/know-relationships-between-all-the-tables-of-database-in-sql-server
* https://stackoverflow.com/questions/5499003/sqlite-list-all-foreign-keys-in-a-database
```python
# https://stackoverflow.com/a/59171912
SELECT * FROM pragma_foreign_key_list('reading');
# next step is running this from sqlite3
```
