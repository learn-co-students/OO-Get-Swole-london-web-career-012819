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
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map {|membership| membership.lifter}
  end

  def names_of_lifters
    self.lifters.map {|lifter| lifter.name}
  end

  def lift_total
    self.lifters.sum do |lifter|
      lifter.lift_total
    end
  end

end

# - Get a list of all gyms [x]

# - Get a list of all memberships at a specific gym [x]

# - Get a list of all the lifters that have a membership to a specific gym [x]

# - Get a list of the names of all lifters that have a membership to that gym [x]

# - Get the combined lift total of every lifter has a membership to that gym
