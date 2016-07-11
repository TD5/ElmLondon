module Rest exposing (..)

import Http exposing (..)
import Json.Decode exposing (..)
import Task
import Types exposing (..)

decodeNewsItem : Decoder News
decodeNewsItem =
    object1 News -- Json object with one property, the "object1" is for mapping the resulting string to a News (without "object1 News", we'd just get the string back)
        ("title" := Json.Decode.string ) -- ':=' is a function from the Json.Decode that grabs a field with a given type

decodeNews : Decoder (List News)
decodeNews =
    "hits" := (list decodeNewsItem)

endPoint : String
endPoint =
    "https://hn.algolia.com/api/v1/search_by_date?tags=story&hitsPerPage=50"

getNews : Cmd Msg
getNews =
    Http.get decodeNews endPoint
    |> Task.perform Result.Err Result.Ok
    |> Cmd.map GetNewsResponse
