class Lifter

  attr_accessor :name
  attr_reader :lift_total

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
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.averagelift
    all_lift_totals = @@all.map {|lifter| lifter.lift_total }.inject(:+)/@@all.length
    #OR
    # total_lifts = all_lift_totals.inject(:+)
    # total_lifts / @@all.length
  end

  def total_cost
    total = memberships.map {|lifter| lifter.cost}
    total.reduce(:+)
  end

  def sign_up(gym,cost)
    Membership.new(self,gym,cost)
  end
end

# binding.pr
