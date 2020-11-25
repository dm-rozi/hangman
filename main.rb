require_relative 'lib/console_interface'
require_relative 'lib/game'

# 1. Greetings
puts "Всем привет!"

# 2. Read the word from file
word = File.readlines("#{__dir__}/data/words.txt", chomp: true, encoding: "UTF-8").sample

puts word

game = Game.new(word)

console_interface = ConsoleInterface.new(game)

# 3. while not end the game
until game.over?
  #   3.1. Get current state
  console_interface.print_out
  #   3.2. Ask the letter
  letter = console_interface.get_input
  #   3.3. Update state of game 
  game.play!(letter)
end
 
# 4. Congrats or user funeral. (Print final state of game)
console_interface.print_out
