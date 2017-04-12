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
    }

type alias Model = 
    { allGames : List Game -- All games
    , games : List Game -- Games that are displayed
    , query : String
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
    [ input 
        [ onInput Change 
        , placeholder "Search for a game"
        ] 
        [] 
    , div [] (List.map gameView model.games)
    ]

gameView game =
    div []
        [ h2 [] [ text game.title ]
        , h3 [] [ text <| toString game.year ]
        , text <| game.genre
        , div []
            (List.map text game.platforms)
        , text <| toString game.hours ++ " hours"
        ]

type Msg =
    Change String

update msg model =
    case msg of
        Change q ->
            { model 
            | query = q 
            , games = filtered q model
            }

filtered query model =
    List.filter 
        (String.startsWith (String.toLower query)
        << String.toLower
        << .title)
        model.allGames

