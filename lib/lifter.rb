class Lifter
  attr_reader :name, :lift_total, :memberships
  # extend Methods::ClassMethods
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def newMembership(cost,gym)
    Membership.new(cost, self, gym)
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def membershipcosts
    totalCosts = 0
    self.memberships.each {|membership| totalCosts += membership.cost }
    totalCosts
  end

def self.averageLift
  Lifter.all.collect {|lifter| lifter.lift_total}.inject{|sum,n| sum += n}/Lifter.all.count
end


  def self.all
    @@all
  end

end
