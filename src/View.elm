module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)

root : Model -> Html Msg -- Html can generate messages, e.g. onClick callbacks
root model =
    div []
        [ h1 [style [ ( "font-style", "italic" ) ] ]
            [ text "News!" ]
        , case model.news of

            Succeeded news ->
                ul []
                    (List.map newsItem news)

            Loading -> 
                text "Loading..."

            Failed error ->
                text (toString error)

        , div [] 
            [ code [] [ text (toString model) ] ] -- Dump model for debugging purposes
        ]

newsItem : News -> Html Msg
newsItem news =
    li [] 
       [ h3 []  [ text news.headline ] ]
