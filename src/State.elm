module State exposing (..)

init : ( Model, Cmd Msg ) -- "Cmd" means this is a way of describing side-effects
init = 
    ( {}
    , Cmd.none 
    )
