class Gym
  attr_reader :name
  # extend Methods::ClassMethods
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    memberships.map { |member| member.lifter}
  end

  def names
    lifters.map { |lifter| lifter.name}
  end

  def liftTotal
    lifters.reduce(0) {|total, lifter| total += lifter.lift_total}
  end


end
