require('rspec')
require('places')

describe(Places) do
  describe("#location") do
    it("lets user input a location visited") do
      test_place = Places.new("Oregon")
      expect(test_place.location()).to(eq("Oregon"))
    end
  end
  describe(".all") do
    it("is empty at first so we can store in it and add to it") do
      expect(Places.all()).to(eq([]))
    end
  end
end
