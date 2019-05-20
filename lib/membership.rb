class Membership
  attr_reader :cost

  @@all = []

  def initialize(cost)
    @cost = cost
    @@all << self
  end

  def all
    @@all
  end
end
