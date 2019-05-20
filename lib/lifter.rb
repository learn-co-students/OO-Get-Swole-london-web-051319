class Lifter
  attr_accessor :name, :lift_total

   # CLASS ******************

   @@all = []

   def self.all
      @@all
   end
   
   def initialize(name: , lift_total: )
     @name = name
     @lift_total = lift_total
     @@all << self
 end

 def self.av_total_lift
   Lifter.all.map{|inst| inst.lift_total}.inject(0){|sum,x| sum+x}/Lifter.all.length
 end

   # INSTANCE ****************

   def memberships
      Membership.all.select{|inst| inst.lifter == self}
   end 

   def membership_cost
      memberships.map{|inst| inst.cost}.inject(0){|sum,x| sum+x}
   end

   def gyms
      memberships.map{|inst| inst.gym}
   end

   def sign_up(gym_name, cost)
      gym = Gym.all.select{|inst| inst.name == gym_name}[0] # if you don't exit the array the new entry won't be added to the gym memberships list
      Membership.new(cost: cost, gym: gym, lifter: self)
   end


end