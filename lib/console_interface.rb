class ConsoleInterface
  # const variables
  FIGURES = 
    Dir["#{__dir__}/../data/figures/*.txt"].
    sort.
    map{ |file_name| File.read(file_name) }

  def initialize(game)
    @game = game
  end

  def print_out
    word_string = "Слово: " + word_to_show
    errors_string = "Ошибки (" + @game.errors_made.to_s + "): " + errors_to_show.to_s

    puts <<~END 
      #{word_string.colorize(:blue)}
      #{figure.colorize(:green)}  
      #{errors_string.colorize(:red)}
      У вас осталось ошибок: #{@game.errors_allowed}
    
    END

    if @game.won?
      puts "Поздравляем, вы выиграли!"
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: #{@game.word}"
    end
  end

  def figure
    return FIGURES[@game.errors_made]
  end

  def word_to_show
    result = 
      @game.letters_to_guess.map do |letter|
        if letter.nil?
          "__"
        else
          letter
        end
      end
    return result.join(" ")  
  end

  def errors_to_show
    return @game.errors.join(", ")
  end
  
  def get_input
    print "Введите следующую букву: "
    letter = gets[0].upcase
    return letter
  end
end
