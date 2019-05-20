class Gym
  attr_reader :name

   #  CLASS **************

      @@all = []

      def self.all
         @@all
      end

  def initialize(name:)
    @name = name
    @@all << self
end

   #  INSTANCE **********

   def memberships
      Membership.all.select{|inst| inst.gym == self}
   end

   def lifters
      memberships.map{|inst| inst.lifter}
   end

   def lifters_names
      lifters.map{|inst| inst.name}
   end

   def lifter_total
      lifters.map{|inst| inst.lift_total}.inject(0){|sum,x| sum+x}
   end

end