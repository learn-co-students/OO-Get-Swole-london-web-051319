class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  #Get a list of all the memberships that a specific lifter has
    @@all
  end

  def memberships
    #Get a list of all memberships at a specific gym
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    #Get a list of all the lifters that have a membership to a specific gym
    memberships.map {|membership| membership.lifter}
  end

  def lifter_name
    #Get a list of the names of all lifters that have a membership to that gym
    lifters.map {|lifter| lifter.name}
  end

  def combined_lift
    #Get the combined lift total of every lifter has a membership to that gym
    lifter = lifters.map {|lift| lift.lift_total}
    tot = lifter.sum
  end


end
