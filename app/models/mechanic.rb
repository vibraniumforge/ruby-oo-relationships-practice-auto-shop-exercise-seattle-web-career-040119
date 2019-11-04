class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def all_car_owners
    all_cars.map do |car|
      car.car_owner
    end
  end

  def all_car_owners_names
    all_car_owners.map do |co|
      co.name
    end
  end

end
