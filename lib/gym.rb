class Gym
  attr_reader :name, :lifters

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|x| x.gym == self}
  end

  def lifters
    memberships.map {|x| x.lifter}
  end

  def lifter_names
    lifters.map {|x| x.name}
  end

  def combined
    memberships.sum {|x| x.lifter.lift_total}
  end
end
