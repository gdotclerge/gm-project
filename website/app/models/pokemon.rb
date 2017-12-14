class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  has_many :pokemonmoves
  has_many :moves, through: :pokemonmoves
end
