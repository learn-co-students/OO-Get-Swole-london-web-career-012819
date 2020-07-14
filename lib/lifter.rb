class Lifter

  attr_accessor :name, :lift_total
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
    Membership.all.select do |membership|
    membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym.name
    end
  end

  def self.average_lift_total
  average_lift = 0
    @@all.each do |lifter|
      average_lift += lifter.lift_total
    end
    average_lift.to_f / @@all.length.to_f
  end


  def new_gym(gym, cost)
    Membership.new(self, gym, cost)
  end

  def cost
total_cost = 0
    self.memberships.each do |membership|
      total_cost += membership.cost
    end
    total_cost
  end


end
