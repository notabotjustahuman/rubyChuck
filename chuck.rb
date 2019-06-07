require'chuck_norris'

class ChuckJoke
  attr_accessor :jokes
  def initialize(jokes)
    @jokes = jokes
  end
  def help
    puts "Type ruby app.rb random to give you a random joke."
    puts "Type ruby app.rb (IdNumber) to give you a joke with the id you input."
    puts "Type ruby app.rb (Name) to give you a joke with changing the name."
  end

  def get_joke_by_id(id)
    joke = ChuckNorris::JokeFinder.find_joke(id)
    # puts "ID  Number #{joke.id}"
    puts joke.joke
  end

  def replace_name(first, last)
    joke = ChuckNorris::JokeFinder.get_joke(first_name: first, last_name: last)
    # puts "ID  Number #{joke.id}"
    puts joke.joke
  end

  def random
    joke = ChuckNorris::JokeFinder.get_joke
    # puts "ID  Number #{joke.id}"
    puts joke.joke
  end
end


# puts hehe.random
