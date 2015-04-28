require('rspec')
require('PlacesBeen')

describe(PlacesBeen) do
  describe('#description') do
    it("will show the place you have travelled before") do
      test_place = PlacesBeen.new("USA")
      expect(test_place.description()).to(eq("USA"))
    end
  end
end
