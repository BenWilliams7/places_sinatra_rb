require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @listPlaces = Places.all()
  erb(:index)
end

post("/gotoplace") do
  location = params.fetch("location")
  places = Places.new(location)
  places.save()
  erb(:success)
end
