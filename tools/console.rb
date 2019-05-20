# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'


dave = Lifter.new("Dave", 100)
catherine = Lifter.new("Catherine", 80)
alex = Lifter.new("Alex", 135)
moorgate = Gym.new("Moorgate")
wimbledon = Gym.new("Wimbledon")
dave.new_membership(25, moorgate)
dave.new_membership(35, wimbledon)
alex.new_membership(30, moorgate)
catherine.new_membership(35, moorgate)
# test code goes here

binding.pry

puts "Gains!"
