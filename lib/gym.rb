class Gym
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |membership| membership.gym == self  }
  end

  def lifters
    memberships.map { |membership| membership.lifter  }
  end

  def lifters_names
    lifters.map { |lifter| lifter.name  }
  end

  def lifter_totals
    arr = []
    arr = lifters.map { |membership| membership.lift_total  }
    arr.reduce(:+)
  end
end
