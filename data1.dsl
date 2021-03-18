DELETE data1

PUT data1/_doc/1
{
  "category": "A",
  "amount": 10.5
}

PUT data1/_doc/2
{
  "category": "C",
  "amount": 5.3
}

PUT data1/_doc/3
{
  "category": "B",
  "amount": 21.99
}

PUT data1/_doc/4
{
  "category": "A",
  "amount": 1.99
}

GET data1/_search
{
  "query": {
    "match_all": {}
  }
}

