module Main exposing (..)

import Games exposing (allGames)
import Html exposing (..)
import App exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)
import List exposing (map, sortBy)
import String exposing (padLeft)

main =
  Html.program 
      { init = init
      , view = view
      , update = update 
      , subscriptions = \model -> Sub.none
      }

view model =
  div []
    [ navbar model
    , div [ class "game-list" ] (List.map gameView model.games)
    , Html.node "link"
        [ Html.Attributes.rel "stylesheet"
        , Html.Attributes.href "style.css" 
        ] []
    , div [ class "rainbow-wrapper" ] []
    ]

navbar model = 
    div [ id "navbar"]
    [ h1 [ class "heading" ] [ text "Game Together" ]
    , fieldset [ class "sort-order" ]
        [ sortOption Alphabetical model
        , sortOption Chronological model
        , sortOption Playtime model
        ]
    , input 
        [ class "search-box"
        , onInput UpdateQuery 
        , placeholder "Search for a game"
        ] []
    ]

sortOption order model =
    let color = if order == model.order then "white" else "#777777"
    in
    div [ onClick (Sort order) 
        , style [ ("color", color) ]
        ]
        [ text <| toString order ]

gameView game =
    let gameClass = if game.played then "game-view played" else "game-view"
    in
    div [ class gameClass ]
        [ h2 [ class "game-title" ] [ text game.title ]
        , p [ class "game-year" ] [ text <| toString game.year ]
        , p [ class "game-genre" ] [ text <| game.genre ]
        , platformsView game.platforms
        , p [ class "game-hours" ] 
            [ text <| toString game.hours ++ " hour" ++ plural game.hours ]
        ]

plural n =
    if n == 1 then "" else "s"

platformsView platforms =
    div [ class "game-platforms-list" ]
    [ ul [ class "game-platforms" ]
        (List.map platformView platforms)
    ]

platformView platform =
    li []
    [ text platform ]

