require 'rest-client'
require 'json'
require 'pry'



def get_character_movies_from_api(character_name)
  #make the web request
  # characters_data = response_hash["results"].find{ |data| data["name"] == character_name}
  # film_title = character_data["films"]
  response_string = RestClient.get('http://www.swapi.co/api/people')
  response_hash = JSON.parse(response_string)
  films = []
  response_hash["results"].each do | character_hash |
    if character_hash["name"].downcase == character_name
      films = character_hash["films"]
        end
      end
      films
    end
      #code

      # binding.pry
#     end
#   end
# end



  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
#response_hash["results"].each do | character_hash |

def print_movies(show_character_movies)
  show_character_movies.each do |url|
    step_0 = RestClient.get(url)
    # binding.pry
    step_1 = JSON.parse(step_0)
    count = 0
    count + 1
    puts "#{count}. #{step_1["title"]}"
  end
  # some iteration magic and puts out the movies in a nice list
end

def show_character_movies(character_name)
  # puts character_name

  films = get_character_movies_from_api(character_name)
    # binding.pry
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
