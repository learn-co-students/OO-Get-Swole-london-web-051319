class Membership
  
   attr_accessor :cost, :gym, :lifter

#  CLASS **************

  @@all = []

  def self.all
    @@all
  end

  def initialize(cost: , gym: , lifter: )
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end

   #  INSTANCE **********


end
