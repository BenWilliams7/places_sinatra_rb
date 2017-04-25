class Places
  @@all_places = []
  define_method(:initialize) do |destination|
    @locInstance = destination
  end
  define_method(:location) do
    @locInstance
  end
  define_singleton_method(:all) do
    @@all_places
  end
  define_method(:save) do
    @@all_places.push(self)
  end
end
