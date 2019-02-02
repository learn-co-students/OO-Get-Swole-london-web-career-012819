# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Greg", 12)
l2 = Lifter.new("Gary", 18)
l3 = Lifter.new("Geff", 15)

g1 = Gym.new("EC1")
g2 = Gym.new("SW2")
g3 = Gym.new("SE4")

l1.sign_up(12, g1)
l1.sign_up(24, g2)

binding.pry

puts "Gains!"
