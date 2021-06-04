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

  # Proceed from the information you are trying to access through
  # the paths you will need to take to access it
  def recommend_personnel(ship)
    recommended = []
    @personnel.each do |person|
      ship.requirements.each do |req|
        requirement = req.keys[0]
        experience = req[requirement]
        if person.specialties.include?(requirement) && person.experience >= experience
          recommended << person
        end
      end
    end
    recommended.uniq
  end

  def personnel_by_ship
    # This creates a hash, using the whole ship object as a key
    personnel_assignments = {}
    @ships.each do |ship|
      personnel_assignments[ship] = recommend_personnel(ship)
    end
    personnel_assignments
  end
end