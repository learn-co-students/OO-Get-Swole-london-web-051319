# **Membership**
#
#   - Get a list of all memberships
#link with gym, lifter

class Membership
  attr_accessor :cost, :gym, :lifter

  @@all = []

  def initialize(cost, gym, lifter)
    @gym = gym
    @lifter = lifter
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end
end
