require './lib/person'

RSpec.describe Person do
  describe 'instantiation' do
    it 'exists' do
      kathy = Person.new('Kathy Chan', 10)
      expect(kathy).to be_a(Person)
    end

    it 'has attributes' do
      kathy = Person.new('Kathy Chan', 10)
      expect(kathy.name).to eq('Kathy Chan')
      expect(kathy.experience).to eq(10)
      expect(kathy.specialties).to eq([])
    end
  end

  describe 'methods' do
    it 'adds a specialty' do
      kathy = Person.new('Kathy Chan', 10)
      kathy.add_specialty(:astrophysics)
      kathy.add_specialty(:quantum_mechanics)

      expect(kathy.specialties).to eq([:astrophysics, :quantum_mechanics])
    end

  end
end