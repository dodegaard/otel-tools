$hash = '{
    "resourceSpans": [
     {
       "resource": {
         "attributes": [
           {
             "key": "service.name",
             "value": {
               "stringValue": "test-with-curllightbridge"
             }
           }
         ]
       },
       "scopeSpans": [
         {
           "scope": {
             "name": "manual-test"
           },
           "spans": [
             {
               "traceId": "71699b6fe85982c7c8995ea3d9c95df9",
               "spanId": "3c191d03fa8be065",
               "name": "spanitron",
               "kind": 2,
               "droppedAttributesCount": 0,
               "events": [],
               "droppedEventsCount": 0,
               "status": {
                 "code": 1
               }
             }
           ]
         }
       ]
     }
   ]
  }'
  
  $body = $hash
  
  Invoke-RestMethod -Method 'Post' -Uri "http://10.127.80.117:4318/v1/traces" -Body $body -ContentType "application/json"