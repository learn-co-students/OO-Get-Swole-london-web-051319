require 'pry'

class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
#Get a list of all lifters
    @@all
  end

  def membership
#Get a list of all the memberships that a specific lifter has
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    #Get a list of all the gyms that a specific lifter has memberships to
    membership.map {|membership| membership.gym}
  end

  def average
    #Get the average lift total of all lifters
    tot_arr = self.all.map{|lifter| lifter.lift_total}
    tot_arr.sum = total
    tot_lifters = self.all.length
    ave = total/tot_lifters
  end

  def cost_of_membership
    #Get the total cost of a specific lifter's gym memberships
    gym_costs = gyms.map{|gym| gym.cost}
    total_cost = gym_costs.sum
    binding.pry
  end

  def new_member(cost, gym)
    #Given a gym and a membership cost, sign a specific lifter up for a new gym
    new = Membership.new(cost, self, gym)
    new
  end

end
