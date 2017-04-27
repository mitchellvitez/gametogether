module Main exposing (..)

import NativeUi as Ui exposing (Node)
import NativeUi.Style as Style exposing (defaultTransform)
import NativeUi.Elements as Elements exposing (..)
import NativeUi.Events exposing (..)
import Games exposing (allGames)
import List exposing (sortBy)
import App exposing (..)

-- PROGRAM

main : Program Never Model Msg
main =
  Ui.program 
      { init = init
      , view = view
      , update = update 
      , subscriptions = \model -> Sub.none
      }

-- VIEW

view : Model -> Node Msg
view model =
  Elements.view [ Ui.style [ Style.backgroundColor "#2faced" ] ]
    [ navbar model
    , Elements.scrollView [] (List.map gameView model.games)
    ]

navbar model =
    Elements.view 
        [ Ui.style 
            [ Style.padding 16
            , Style.backgroundColor "#222222"
            ] 
        ]
        [ text 
            [ Ui.style 
                [ Style.fontSize 36
                , Style.color "white"
                , Style.fontWeight "bold"
                , Style.marginBottom 8
                ] 
            ] 
            [ Ui.string "Game Together" ]
        , sortOption Alphabetical model
        , sortOption Chronological model
        , sortOption Playtime model
        , inputBox
        ]

inputBox =
    Elements.view
        []
        [ Elements.textInput
            [ Ui.style 
                [ Style.height 28
                , Style.backgroundColor "#444444"
                , Style.marginTop 8
                , Style.color "white"
                , Style.padding 4
                , Style.borderRadius 4
                ] 
            , onChangeText UpdateQuery
            ]
            []
        ]

sortOption order model =
    let color = if order == model.order then "white" else "#777777"
    in
    Elements.view 
        [ Ui.style 
            [ Style.backgroundColor "#222222" 
            ]
        ]
        [ text 
            [ onPress (Sort order) 
            , Ui.style 
                [ Style.fontSize 20 
                , Style.color color
                ]
            ]
            [ Ui.string <| toString order ]
        ]

gameView game =
    Elements.view 
        [ Ui.style 
            [ Style.margin 16 
            , Style.marginBottom 2
            , Style.backgroundColor "white"
            , Style.borderWidth 4
            , Style.borderColor "#dddddd"
            , Style.borderStyle "solid"
            , Style.padding 8
            , Style.borderRadius 8
            ] 
        ]
        [ text 
            [ Ui.style 
                [ Style.fontSize 28 
                , Style.fontWeight "bold"
                , Style.marginRight 8
                ] 
            ] 
            [ Ui.string game.title ]
        , text 
            [ Ui.style 
                [ Style.fontSize 18 
                , Style.alignSelf "flex-end"
                ] 
            ] 
            [ Ui.string <| toString game.year ]
        , text 
            [ Ui.style 
                [ Style.fontSize 20 
                , Style.marginBottom 4
                ] 
            ] 
            [ Ui.string <| game.genre ]
        , platformsView game.platforms
        , text 
            [ Ui.style 
                [ Style.fontSize 14 
                , Style.alignSelf "flex-end"
                ] 
            ] 
            [ Ui.string <| toString game.hours ++ " hour" ++ plural game.hours ]
        ]

p content =
    text [ Ui.style [ Style.fontSize 14 ] ] [ Ui.string content ]

plural n =
    if n == 1 then "" else "s"

platformsView platforms =
    Elements.view [] (List.map p platforms)

