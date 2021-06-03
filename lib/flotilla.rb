class Flotilla
  attr_reader :name, :personnel, :ships

  def initialize(details)
    @name = details[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end

  def add_personnel(person)
    @personnel << person
  end

  # def recommend_personnel(ship)
  #   @personnel.find_all do |person|
  #     person.specialties.each do |specialty|
  #       ship.requirements do |req|
  #       end
  #     end
  #   end
  # end
end