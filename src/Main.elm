module Main exposing (Model, Msg, main)

import Browser
import Html exposing (Html)
import Html.Attributes as Attrs
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
    Html.div [ Attrs.class "w-fit mx-auto mt-10" ]
        [ Html.div []
            [ Html.button
                [ onClick Decrement
                , Attrs.class "py-3 px-5 bg-pink-400 rounded text-white"
                ]
                [ Html.text "Sub" ]
            , Html.div [ Attrs.class "text-center" ] [ Html.text <| String.fromInt model ]
            , Html.button
                [ onClick Increment
                , Attrs.class "py-3 px-5 bg-indigo-400 rounded text-white"
                ]
                [ Html.text "Add" ]
            ]
        ]
