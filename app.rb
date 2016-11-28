require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/calculate') do
  length = params.fetch('length').to_i()
  width = params.fetch('width').to_i()
  height = params.fetch('height').to_i()
  weight = params.fetch('weight').to_i()
  distance = params.fetch('distance').to_i()
  speed = params.fetch('speed').to_i()
  parcel_object = Parcel.new(length, width, height, weight, distance, speed)
  @final_cost = parcel_object.cost_to_ship()
  erb(:output)
end
