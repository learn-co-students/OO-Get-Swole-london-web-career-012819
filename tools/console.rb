# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

kian = Lifter.new("Kian", 30)
tomi = Lifter.new("Tomi", 56)
moe = Lifter.new("Moe", 80)

puregym = Gym.new("Pure Gym")
david_lloyd = Gym.new("David Loyd")
fitness_first = Gym.new("Fitness First")

kian.new_gym(puregym, 25)
kian.new_gym(david_lloyd, 120)
tomi.new_gym(fitness_first, 50)
moe.new_gym(puregym, 25)

binding.pry

puts "Gains!"
