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

  def list_specific_gym
    Membership.all.select {|member| member.gym == self}
  end

  def specificlifter
    list_specific_gym.map {|x| x.lifter}
  end

  def name_lifters
    specificlifter.map {|n| n.name}
  end

  # def combined_total
  #   total = list_specific_gym.select {|x| x.lifter.lift_total}
  #   total.inject(:+)
  # end

  def combined
    total = specificlifter.select {|x| lifter.lift_total}
    total.inject(:+)
  end
end
