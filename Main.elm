import Games exposing (allGames)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)
import List exposing (map)

main =
  beginnerProgram 
      { model = init
      , view = view
      , update = update 
      }

init =
    { allGames = allGames
    , games = allGames
    , query = ""
    , order = Chronological
    }

type alias Model = 
    { allGames : List Game -- All games
    , games : List Game -- Games that are displayed
    , query : String
    , order : Order
    }

type alias Game =
    { title : String
    , year : Int
    , genre : String
    , platforms : List String
    , hours : Int
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
        ]
    , input 
        [ class "search-box"
        , onInput Change 
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
    div [ class "game-view" ]
        [ h2 [ class "game-title" ] [ text game.title ]
        , p [ class "game-year" ] [ text <| toString game.year ]
        , p [ class "game-genre" ] [ text <| game.genre ]
        , platformsView game.platforms
        , p [ class "game-hours" ] [ text <| toString game.hours ++ " hour" ++ plural game.hours ]
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

type Order = Alphabetical | Chronological

type Msg =
      Change String
    | Sort Order

update msg model =
    case msg of
        Change q ->
            { model 
            | query = q 
            , games = filtered q model
            }

        Sort order ->
            case order of 
                Alphabetical ->
                    { model 
                    | games = List.sortBy .title model.games
                    , order = order
                    }
                Chronological ->
                    { model 
                    | games = List.sortBy .year model.games
                    , order = order
                    }

filtered query model =
    List.filter 
        (String.startsWith (String.toLower query)
        << String.toLower
        << .title)
        model.allGames

