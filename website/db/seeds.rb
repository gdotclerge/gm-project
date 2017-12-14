require "faker"


Trainer.destroy_all
Pokemon.destroy_all
Move.destroy_all
Pokemonmove.destroy_all


10.times do
  Trainer.create(name: Faker::Name.first_name)
end

50.times do
  Move.create(name: Faker::Pokemon.move, power_level: rand(20..100))
end

100.times do
  pokemon = Pokemon.create(name: Faker::Pokemon.name, ability: Faker::Superhero.power, trainer_id: Trainer.all.sample.id)
  4.times do pokemon.moves << Move.all.sample end
end
