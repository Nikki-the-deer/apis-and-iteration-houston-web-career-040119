#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"
require 'rest-client'

require 'pry'

require 'JSON'

welcome
character_name = get_character_from_user
show_character_movies(character_name)

# def fetch(character)
#   character_data = RestClient.get('http://swapi.co/api/people/1')
#
#   character_hash = JSON.parse(character_data)
# end
#
# def show_character_movies(character)
#   films_array = get_character_movies_from_api(character)
#   print_movies(films_array)
# end
