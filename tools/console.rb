# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

fia = Lifter.new("Fia", 75)
erika = Lifter.new("Erika", 100)
john = Lifter.new("John", 200)
luc = Lifter.new("Luc", 210)




barrys = Gym.new("Barry's Bootcamp")
rebel = Gym.new("1Rebel")
fitness_first = Gym.new("Fitness First")

Membership.new(barrys, 200, fia)
Membership.new(fitness_first, 80, erika)
Membership.new(fitness_first, 90, fia)
Membership.new(rebel, 150, luc)
Membership.new(rebel, 80, erika)
Membership.new(barrys, 180, luc)
Membership.new(fitness_first, 80, john)



binding.pry

puts "Gains!"
