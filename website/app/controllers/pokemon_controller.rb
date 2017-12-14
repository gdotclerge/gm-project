class PokemonController < ApplicationController

  get "/pokemon" do
    @pokemon = Pokemon.all
    erb :"pokemon/index"
  end


  get "/pokemon/new" do
    @abilities = Pokemon.all.map {|p| p.ability}
    @moves = Move.all
    erb :"pokemon/new"
  end


  get "/pokemon/:id" do
    @pokemon = Pokemon.find(params[:id])
    erb :"pokemon/show"
  end

  post "/pokemon" do
    @pokemon = Pokemon.create(params[:pokemon])
    redirect "/pokemon/#{@pokemon.id}"
  end

end
