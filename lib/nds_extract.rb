$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123

  totals = {}
  
  director_index = 0
  while director_index < nds.length do
    name = nds[director_index]
    totals[name[:name]] = 0
    #totals #[hash] = 0  
    #binding.pry
    movie_index = 0
    while movie_index < nds[director_index][:movies].length do
        #binding.pry
      
        totals[name[:name]] += nds[director_index][:movies][movie_index][:worldwide_gross]
         movie_index += 1
      end
         director_index += 1
    end
    totals
end