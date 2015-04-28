require('rspec')
require('PlacesBeen')

describe(PlacesBeen) do
  describe('#description') do
    it("will show the place you have travelled before") do
      test_place = PlacesBeen.new("USA")
      expect(test_place.description()).to(eq("USA"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(PlacesBeen.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a place to the array of saved places") do
      test_place = PlacesBeen.new("Canada")
      test_place.save()
      expect(PlacesBeen.all()).to(eq([test_place]))
    end
  end

  describe('.clear') do
    it("will clear the array of all places been") do
      PlacesBeen.new("Canada").save()
      PlacesBeen.clear()
      expect(PlacesBeen.all()).to(eq([]))
    end
  end
end
