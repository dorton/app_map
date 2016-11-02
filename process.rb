require 'erb'
require 'csv'
require 'geocoder'

Geocoder.configure(:timeout => 3)

points = []
CSV.foreach "addresses-copy.csv", headers: true do |row|
  address = row[6]
  lat, lng = Geocoder.coordinates(address)
  hash = row.to_hash
  hash["lat"] = lat
  hash["lng"] = lng
  points << hash
end


erb = File.read('index.html.erb')
html= ERB.new(erb).result(binding)

File.open('index.html', 'wb') {|f| f << html }
