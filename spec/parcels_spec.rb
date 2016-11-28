require('parcels')
require('rspec')
require('pry')

describe(Parcel) do
  describe('#volume') do
    it('return the volume of a parcel object') do
      new_parcel = Parcel.new(10, 10, 10, 5, 0, 0)
      expect(new_parcel.volume).to(eq(1000))
    end
  end

  describe('#cost_to_ship') do
    it('evaluates the cost to ship based on formula') do
      parcel_cost = Parcel.new(20, 20, 10, 5, 2500, 1)
      expect(parcel_cost.cost_to_ship).to(eq(20.00))
    end
  end
end
