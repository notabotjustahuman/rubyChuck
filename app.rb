require './chuck'

hehe = ChuckJoke.new('Hehe')
if ARGV.length == 2
  hehe.replace_name(ARGV[0], ARGV[1])
  elsif ARGV[0] == 'random'
    hehe.random
  elsif ARGV[0] == 'ID'
    puts "You're a joke"
  elsif ARGV[0].to_i > 0
    hehe.get_joke_by_id(ARGV[0].to_i)
  else
    hehe.help
end
