class Lifter
  attr_reader :name, :lift_total
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
    Membership.all.select {|membership| membership if membership.lifter == self}
  end

  def gyms
    self.memberships.map {|membership| membership.gym}
    # self.memberships.map {|m| m.gym == self}
  end

  def sign_up(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end

  def self.average_lift
    sum = self.all.sum { |lifter| lifter.lift_total }
    sum / self.all.length
  end

  def total_membership_cost
    self.memberships.sum {|membership| membership.cost}
  end
end
# - Get a list of all lifters [x]

# - Get a list of all the memberships that a specific lifter has [x]

# - Get a list of all the gyms that a specific lifter has memberships to [x]

# - Get the average lift total of all lifters [x]

# - Get the total cost of a specific lifter's gym memberships [x] 

# - Given a gym and a membership cost, sign a specific lifter up for a new gym [x]
