# **Gym**
#
#   - Get a list of all gyms
#
#   - Get a list of all memberships at a specific gym
#
#   - Get a list of all the lifters that have a membership to a specific gym
#
#   - Get a list of the names of all lifters that have a membership to that gym

  # - Get the combined lift total of every lifter has a membership to that gym




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
  #Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end
#- Get a list of all the lifters that have a membership to a specific gym
  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end
 #   - Get a list of the names of all lifters that have a membership to that gym
  def lifter_names
    lifters.map do |lifter|
      lifter.name
    end
  end
  # - Get the combined lift total of every lifter has a membership to that gym
  def lift_total
    lifter.map do |lifter|
      lifter.lift_total
    end.reduce(:+)
  end



end
