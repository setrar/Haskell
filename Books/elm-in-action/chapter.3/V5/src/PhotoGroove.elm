module PhotoGroove exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Browser

import Array exposing (Array)

initialModel : { photos : List Photo, selectedUrl : String }
initialModel =
    { photos =
        [ { url = "1.jpeg" }
        , { url = "2.jpeg" }
        , { url = "3.jpeg" }
        ]
    , selectedUrl = "1.jpeg"
    }

isEmpty : String -> Bool
isEmpty str = str == ""

type alias Photo =
    { url : String }
 
photoArray : Array Photo
photoArray =
    Array.fromList initialModel.photos

selectPhoto : { description : String, data : String }
selectPhoto = { description = "ClickedPhoto", data = "1.jpeg" }

urlPrefix : String
urlPrefix =
    "http://elm-in-action.com/"
 
viewThumbnail : String -> Photo -> Html Msg
viewThumbnail selectedUrl thumb =
    img
        [ src (urlPrefix ++ thumb.url)
        , classList [ ( "selected", selectedUrl == thumb.url ) ]
        , onClick { description = "ClickedPhoto", data = thumb.url }
        ]
        []

padNine : Char ->  String -> String
padNine = String.padLeft 9

padNineDots : String -> String
padNineDots = String.padLeft 9 '.'

type alias Msg =
    { description : String, data : String }

type alias Model =
    { photos : List Photo
    , selectedUrl : String
    }

view : Model -> Html Msg
view model =
    div [ class "content" ]
        [ h1 [] [ text "Photo Groove" ]
        , button
            [ onClick { description = "ClickedSurpriseMe", data = "" } ]
            [ text "Surprise Me!" ]
        , div [ id "thumbnails" ]
            (List.map (viewThumbnail model.selectedUrl) model.photos)
        , img
            [ class "large"
            , src (urlPrefix ++ "large/" ++ model.selectedUrl)
            ]
            []
        ]

update : Msg -> Model -> Model
update msg model =
    case msg.description of
       "ClickedPhoto" ->
        { model | selectedUrl = msg.data }

       "ClickedSurpriseMe" ->
        { model | selectedUrl = "2.jpeg" }

       _ ->
        model

main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }

