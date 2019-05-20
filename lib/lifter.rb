class Lifter
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@lifters << self
  end

  def self.all
    @@lifters
  end

  def memberships
    Membership.all.select { |memberships| memberships.lifter == self }
  end

  def gyms
    memberships.map {|memberships| memberships.gym}
  end

  def self.avg_lift_total
    @@lifters.map{ |lifters| lifters.lift_total }.sum / @@lifters.size
  end

  def membership_cost
    memberships.reduce(0) {|total, membership| total + membership.cost}
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
