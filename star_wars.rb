require 'rest-client'

require 'pry'

require 'JSON'

character_data = RestClient.get('http://swapi.co/api/people/1')

character_hash = JSON.parse(character_data)

puts character_hash

binding.pry

"hello"
