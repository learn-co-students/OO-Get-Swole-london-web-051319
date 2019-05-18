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
  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end
  def gyms
    memberships.map {|membership| membership.gym}
  end
  def avg_lift_total
    @@all.reduce(:+)/@@all.length.to_f
  end
  def total_cost
    memberships.reduce(0) {|total, membership| total + membership.cost }
  end
  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end
