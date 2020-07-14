# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("Tomi", 40)
lifter2 = Lifter.new("Sal", 50)
lifter3 = Lifter.new("Kian", 45)

gym1 = Gym.new("NewGym")
gym2 = Gym.new("TopGym")
gym3 = Gym.new("MarketGym")

member1 = Membership.new(lifter1, gym1, 70)
member2 = Membership.new(lifter1, gym3, 80)
member3 = Membership.new(lifter3, gym2, 65)
member4 = Membership.new(lifter2, gym1, 50)

binding.pry


puts "Gains!"
