class Lifter
  attr_accessor :name, :lift_total
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
    Membership.all.select { |membership|membership.lifter == self  }
  end

  def gyms
    memberships.map { |membership|membership.gym}
  end

  def self.average_lift
    total = Lifter.all.map do |lifter|
      lifter.lift_total
    end
    total.sum / Lifter.all.length
  end

  def total_cost
    total = memberships.map do |gym|
      gym.cost
    end
    total.sum
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
