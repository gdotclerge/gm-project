class CreateTables < ActiveRecord::Migration
  def change

    create_table :trainers do |t|
      t.string :name
    end


    create_table :pokemons do |t|
      t.string :name
      t.string :ability
      t.integer :trainer_id
    end


    create_table :pokemonmoves do |t|
      t.integer :pokemon_id
      t.integer :move_id
    end


    create_table :moves do |t|
      t.string :name
      t.integer :power_level
    end

  end
end
