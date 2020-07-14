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
    Membership.all.select { |membership| membership.lifter == self }
  end

  def self.average_lift
    arr = []
    arr = @@all.map { |all| all.lift_total  }
    arr.reduce(:+)/arr.length.to_f
  end

  def total_cost
    arr = []
    arr = memberships.map { |membership| membership.cost  }
    arr.reduce(:+)
  end

  def new_membership(gym, cost)
    Membership.new(gym, cost, self)
  end

end
