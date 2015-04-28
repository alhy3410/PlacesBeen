require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/PlacesBeen')

get('/') do
  @places = PlacesBeen.all()
  erb(:index)
end

post('/places') do
  description = params.fetch('place')
  place = PlacesBeen.new(description)
  place.save()
  erb(:results)
end
