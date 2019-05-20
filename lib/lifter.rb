class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def all
    @@all
  end

  def lifter_memberships

  end

  def gym_memberships

  end

  def average_lift_total

  end

  def total_cost_of_memberships

  end

  def new_gym(gym, membership)

  end




end
