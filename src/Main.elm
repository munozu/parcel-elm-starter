port module Main exposing (main)

import Browser
import Css exposing (..)
import Html
import Html.Styled exposing (Html, div, h1, p, text, toUnstyled)
import Html.Styled.Attributes exposing (css)


main =
    Browser.element
        { init = init
        , view = view >> toUnstyled
        , update = update
        , subscriptions = \_ -> Sub.none
        }



-- Model


type alias Model =
    {}


init : () -> ( Model, Cmd msg )
init _ =
    ( {}, Cmd.none )


type Msg
    = NoOp



-- Update


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div
        [ css
            [ displayFlex
            , justifyContent center
            , alignItems center
            , height (px 500)
            ]
        ]
        [ div
            []
            [ h1 [] [ text "Parcel Elm!" ]
            , p [] [ text "elm parcel starter" ]
            ]
        ]
