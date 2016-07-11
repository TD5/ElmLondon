module State exposing (..)

import Types exposing (..) -- Make Types module visible in this file

init : ( Model, Cmd Msg ) -- "Cmd" means this is a way of describing side-effects
init = 
    ( {}
    , Cmd.none 
    )
