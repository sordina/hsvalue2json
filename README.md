
# HSValue2JSON

Convert Aeson `Value`s to json.

## Example Usage

```sh
hsvalue2json | jq .
Object (fromList [("data", Object (fromList [("main_article", Array [Object (fromList [("author_by_author_id_to_id", Object (fromList [("articles_by_id_to_author_id", Array [Object (fromList [("author_by_author_id_to_id", Object (fromList [("articles_by_id_to_author_id", Array [Object (fromList [("author_by_author_id_to_id", Object (fromList [("id", Number 1.0)])), ("id", Number 1.0)])]), ("id", Number 1.0)])), ("id", Number 1.0)])]), ("id", Number 1.0)])), ("id", Number 1.0)])])]))])
```

Output:

```json
{
  "data": {
    "main_article": [
      {
        "author_by_author_id_to_id": {
          "articles_by_id_to_author_id": [
            {
              "author_by_author_id_to_id": {
                "articles_by_id_to_author_id": [
                  {
                    "author_by_author_id_to_id": {
                      "id": 1
                    },
                    "id": 1
                  }
                ],
                "id": 1
              },
              "id": 1
            }
          ],
          "id": 1
        },
        "id": 1
      }
    ]
  }
}
```