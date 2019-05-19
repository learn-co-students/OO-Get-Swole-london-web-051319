class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |membership|membership.gym == self }
  end

  def lifters
    memberships.map { |membership|membership.lifter  }
  end

  def combined_lift
    total = lifters.map do |lifter|
      lifter.lift_total
    end
    total.sum
  end
end
