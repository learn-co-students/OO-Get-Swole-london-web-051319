# **Lifter**
#
#   - Get a list of all lifters
#
#   - Get a list of all the memberships that a specific lifter has
#
#   - Get a list of all the gyms that a specific lifter has memberships to
#
#   - Get the average lift total of all lifters
#
#   - Get the total cost of a specific lifter's gym memberships
#
#   - Given a gym and a membership cost, sign a specific lifter up for a new gym

class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end
  #   - Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end
 #   - Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end
#   - Get the average lift total of all lifters
  def self.avg_lift_total
   all.map do |lifter|
       lifter.lift_total
     end.reduce(:+)/all.length.to_f
   end
#   - Get the total cost of a specific lifter's gym memberships
  def total_cost
    memberships.map do |membership|
      membership.cost
    end.reduce(:+)
  end

#   - Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_gym(gym, cost)
    Membership.new(cost, gym, self)
  end

end
