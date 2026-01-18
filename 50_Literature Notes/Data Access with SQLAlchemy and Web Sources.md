---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, sqlalchemy, data]
---

## Main Idea
SQLAlchemy provides database querying with composable expressions; BeautifulSoup handles HTML scraping when needed.

## Explanation
- `DataReader(data, datasource, start, end)` for timeseries retrieval.
- SQLAlchemy case statements: list of conditions with an `else` clause to handle non-matches.
- `cast` converts column types in queries.
- Use SQLAlchemy for joins/filters; keep Pandas for in-memory manipulation.
- HTML scraping: parse with BeautifulSoup before analysis.

## Example
```python
from sqlalchemy import create_engine, select, Table, Column, Integer, String, MetaData, case, cast

engine = create_engine("sqlite:///:memory:")
meta = MetaData()
users = Table("users", meta,
              Column("id", Integer, primary_key=True),
              Column("name", String),
              Column("age", Integer))
meta.create_all(engine)
engine.execute(users.insert(), [{"name": "Ada", "age": 36}, {"name": "Bob", "age": 17}])

stmt = select(users.c.name,
              case((users.c.age >= 18, "adult"), else_="minor").label("segment"),
              cast(users.c.age, String).label("age_str"))
print(engine.execute(stmt).fetchall())
```

## Connections
- [[Pandas Indexing, Merging, and Grouping]]
- [[Machine Learning Workflow Notes]]

## Origin / Trace
- Notes consolidated from `Python language.md`.
