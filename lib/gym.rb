class Gym

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
@@all
  end

  def memberships
    Membership.all.select do |membership|
    membership.gym == self
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter.name
    end
  end

  def new_gym(gym, cost)
    Membership.new(lifter, self, cost)
  end

def lift_total
  lift_total = 0
  self.memberships.map do |membership|
    lift_total+= membership.lifter.lift_total
  end
  lift_total
end

end
