class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

  def memberships
    Membership.all.map {|x| x if x.lifter == self}
  end

  def total_cost
    memberships.sum {|x| x.cost}
  end

  def gyms
    memberships.map {|x| x.gym}
  end

  def self.all
    @@all
  end

  def self.lift_average
    self.all.sum {|x| x.lift_total}/self.all.count
  end
end
