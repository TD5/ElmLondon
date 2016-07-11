module State exposing (..)

import Types exposing (..) -- Make Types module visible in this file


init : ( Model, Cmd Msg ) -- "Cmd" means this is a way of describing side-effects
init = 
    ( {}
    , Cmd.none 
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp -> ( model, Cmd.none )


subscriptions : Model -> Sub Msg -- What should I be listening for?
subscriptions model =
    Sub.none

