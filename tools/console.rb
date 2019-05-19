# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
Rocket = Gym.new("Rocket")
Rackete = Gym.new("Rackete")
Felix = Lifter.new("Felix", 50)
Mario = Lifter.new("Mario", 40)
Felix.newMembership(30, Rocket)
Felix.newMembership(70, Rackete)
Mario.newMembership(80, Rocket)
binding.pry

puts "Gains!"
