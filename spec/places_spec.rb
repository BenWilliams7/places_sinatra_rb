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
  describe("#save") do
  it("adds a location to the array of saved locations") do
    test_place = Places.new("Washington")
    test_place.save()
    expect(Places.all()).to(eq([test_place]))
  end
end
end
