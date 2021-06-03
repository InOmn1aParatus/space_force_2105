class Flotilla
  attr_reader :name, :personnel, :ships
  
  def initialize(details)
    @name = details[:designation]
    @personnel = []
    @ships = []
  end
end