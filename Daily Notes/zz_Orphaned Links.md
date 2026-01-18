```dataview
TABLE length(rows.file.link) as "Mentions", rows.file.link as "Referenced By" FROM "Personal" FLATTEN file.outlinks as outlink WHERE !outlink.file GROUP BY outlink SORT length(rows.file.link) DESC
```
