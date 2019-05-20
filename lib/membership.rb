class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
#Get a list of all the memberships that a specific lifter has
    @@all
  end



end
