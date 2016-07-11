module State exposing (..)

import Types exposing (..) -- Make Types module visible in this file
import Rest exposing (..) 


init : ( Model, Cmd Msg ) -- "Cmd" means this is a way of describing side-effects
init = 
    ( { news = []
      , error = Nothing 
      }
    , getNews -- From imported Rest
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GetNewsResponse (Err errorMessage) ->
            ( { model | error = Just errorMessage }
            , Cmd.none
            )

        GetNewsResponse (Ok newNews) ->
            ( { model | error = Nothing, news = newNews}
            , Cmd.none
            )


subscriptions : Model -> Sub Msg -- What should I be listening for?
subscriptions model =
    Sub.none

