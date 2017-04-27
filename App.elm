module App exposing (..)

import Games exposing (allGames)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)
import List exposing (map, sortBy)
import String exposing (padLeft)

init =
    { games = allGames
    , query = ""
    , order = Chronological
    }
    ! []

type alias Model = 
    { games : List Game
    , query : String
    , order : Order
    }

type alias Game =
    { title : String
    , year : Int
    , genre : String
    , platforms : List String
    , hours : Int
    , played : Bool
    }

type Order =
      Alphabetical
    | Chronological
    | Playtime

type Msg =
      UpdateQuery String
    | Sort Order

update msg model =
    case msg of
        UpdateQuery q ->
            { model 
            | query = q 
            , games = filtered q model
            } ! []

        Sort order ->
            let sortFunction =
                case order of
                    Alphabetical -> sortBy .title
                    Chronological -> sortBy .year
                    Playtime -> sortBy .hours
            in
                { model 
                | games = sortFunction model.games
                , order = order
                } ! []

filtered query model =
    List.filter 
        (String.startsWith (String.toLower query)
        << String.toLower
        << .title)
        allGames

