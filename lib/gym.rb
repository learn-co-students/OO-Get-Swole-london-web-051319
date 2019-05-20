class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def gym_lifters

  end

  def gym_lifter_names

  end

  def combined_lift_total

  end


end
