# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Kevin", 87)
l2 = Lifter.new("Moses", 90)
l3 = Lifter.new("Sam", 81)
l4 = Lifter.new("Lucky", 81)
l5 = Lifter.new("Tony", 75)
l6 = Lifter.new("Haider", 23)
l7 = Lifter.new("Opi", 100)
l8 = Lifter.new("Dave", 45)

g1 = Gym.new("Easy Gym")
g2 = Gym.new("Fitness First")
g3 = Gym.new("Sport house")

m1 = Membership.new("15", l1, g1)
m2 = Membership.new("15", l2, g1)
m3 = Membership.new("25", l3, g2)
m4 = Membership.new("25", l1, g2)
m5 = Membership.new("30", l5, g3)
m6 = Membership.new("30", l4, g3)
m6 = Membership.new("30", l7, g1)
m6 = Membership.new("30", l8, g2)

binding.pry

puts "Gains!"
