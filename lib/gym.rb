class Gym
  attr_reader :name

  @@gyms = []

  def initialize(name)
    @name = name
    @@gyms << self
  end

  def self.all
    @@gyms
  end

  def memberships_at_gym
    Membership.all.select { |memberships| memberships.gym == self  }
  end

  def lifters_at_gym
    memberships_at_gym.map {|memberships| memberships.lifter}
  end

  def names_of_lifters
    lifters_at_gym.map { |lifters| lifters.name }
  end

  def total_lifts
    lifters_at_gym.reduce(0) {|total, lifter| total + lifter.lift_total}
  end

end
