import Html exposing (..)
import Html.App

main =
  Html.App.program
    { init = init
    , subscriptions = subscriptions
    , update = update
    , view = view
    }


-- Model

type alias Model =
  { phrase : String
  }

init : (Model, Cmd Msg)
init =
  ( { phrase = "oooo proverb"}
  , Cmd.none
  )

-- Subscriptions

subscriptions model =
  Sub.none


-- Update

type Msg
  = GetAnother

update : Msg -> Model -> (Model, Cmd Msg)
update action model =
  ( model
  , Cmd.none
  )


-- view

view model = div []
  [ h1 [] [ text "Proverbicam" ]
  ]
