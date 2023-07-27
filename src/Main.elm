module Main exposing (Model, Msg, main)

import Browser
import Html exposing (Html)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.div []
            [ Html.button [ onClick Decrement ] [ Html.text "Sub" ]
            , Html.div [] [ Html.text <| String.fromInt model ]
            , Html.button [ onClick Increment ] [ Html.text "Add" ]
            ]
        ]