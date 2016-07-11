module App exposing (..)

import Html.App
import State
import View

main : Program Never -- Never takes any args
main =
    Html.App.program 
        { init = State.init
        , update = State.update
        , view = View.root
        , subscriptions = State.subscriptions
        }

