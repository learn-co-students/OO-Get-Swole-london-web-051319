# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

coolgym = Gym.new("coolgym")
joe = Lifter.new("Joe", 25)
joe.sign_up(coolgym, 50)
Membership.new("gym","joe", 50)

binding.pry

puts "Gains!"
