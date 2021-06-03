class Spacecraft
  attr_reader :name, :fuel, :requirements

  def initialize(details)
    @name = details[:name]
    @fuel = details[:fuel]
    @requirements = []
  end

  
end