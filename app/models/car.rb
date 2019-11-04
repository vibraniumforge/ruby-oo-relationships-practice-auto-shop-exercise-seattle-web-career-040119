class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []
  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_classifications
    self.all.map do |car|
      car.classification
    end.uniq
  end

  def mech_experts
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
