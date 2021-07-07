# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
dan = Lifter.new("Danny B", 180)
chris = Lifter.new("Chrissy A", 150)
ben = Lifter.new("Benny Boy", 120)
andy = Lifter.new("Andy Son", 100)

david_lloyds = Gym.new("David Lloyd")
virgin = Gym.new("Virgin Active")
gym = Gym.new("The Gym")

new = Membership.new(60, dan, virgin)
old = Membership.new(30, chris, gym)
maybe = Membership.new(80, ben, david_lloyds)
bonus = Membership.new(75, andy, virgin)
another = Membership.new(80, dan, gym)



binding.pry

puts "Gains!"
