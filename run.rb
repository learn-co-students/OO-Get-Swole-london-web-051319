require_relative "lib/lifter.rb"
require_relative "lib/membership.rb"
require_relative "lib/gym.rb"
require "pry"

   # EXAMPLES
   lifter1 = Lifter.new(name: "George", lift_total: 150)
   lifter2 = Lifter.new(name: "Mahmood", lift_total: 200)
   lifter3 = Lifter.new(name: "Joel", lift_total: 95)
   lifter4 = Lifter.new(name: "Arnold", lift_total: 1000)
   lifter5 = Lifter.new(name: "Shaz", lift_total: 170)

   lifter_special = Lifter.new(name: "Brenda", lift_total: 500)

   gym1 = Gym.new(name: "Brighton")
   gym2 = Gym.new(name: "Canary Wharf")
   gym3 = Gym.new(name: "Westminster")
   gym4 = Gym.new(name: "Paris")
   gym5 = Gym.new(name: "Moorgate")
   
   membership1 = Membership.new(cost: 30, gym: gym1, lifter: lifter1)
   membership1 = Membership.new(cost: 30, gym: gym1, lifter: lifter4)
   membership2 = Membership.new(cost: 65, gym: gym2, lifter: lifter2)
   membership3 = Membership.new(cost: 110, gym: gym3, lifter: lifter3)
   membership3 = Membership.new(cost: 85, gym: gym3, lifter: lifter2)
   membership4 = Membership.new(cost: 20, gym: gym4, lifter: lifter4)
   membership5 = Membership.new(cost: 40, gym: gym5, lifter: lifter5)
   membership5 = Membership.new(cost: 25, gym: gym5, lifter: lifter1)
   membership5 = Membership.new(cost: 70, gym: gym5, lifter: lifter4)


binding.pry
puts "end"