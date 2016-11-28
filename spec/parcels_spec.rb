require('parcels')
require('rspec')

describe(Parcel) do
  describe('#volume') do
    it('return the volume of a parcel object') do
      new_parcel = Parcel.new(10, 10, 10, 5)
      expect(new_parcel.volume).to(eq(1000))
    end
  end
end
