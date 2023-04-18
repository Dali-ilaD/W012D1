class Api::PokemonController < ApplicationController
    def types
        types = [
            "fire",
            "electric",
            "normal",
            "ghost",
            "psychic",
            "water",
            "bug",
            "dragon",
            "grass",
            "fighting",
            "ice",
            "flying",
            "poison",
            "ground",
            "rock",
            "steel"
          ] 
        render json: types
    end

    def index

    end

    def show

    end
end
