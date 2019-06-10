# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")


membership1 = Membership.new("Membership1")
membership2 = Membership.new("Membership2")

lifter1.assign_trainer(membership2)
lifter2.assign_trainer(membership1)
lifter3.assign_trainer(membership1)


lifters1 = Lifter.new("Lifter1")
lifter2 = Lifter.new("Lifter2")



binding.pry

puts "Gains!"
