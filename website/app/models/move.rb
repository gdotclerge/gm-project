class Move < ActiveRecord::Base
  has_many :pokemonmoves
  has_many :pokemon, through: :pokemonmoves
end
