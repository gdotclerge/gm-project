class Pokemonmove < ActiveRecord::Base
  belongs_to :pokemon
  belongs_to :move

end
