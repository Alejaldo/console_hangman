class ConsoleInterface
  FIGURES =
    Dir["#{__dir__}/../data/figures/*.txt"].
      sort.
      map { |file_name| File.read(file_name) }
  
  def initialize(game)
    @game = game
  end

  def print_out
    puts <<~END
      Слово: #{word_to_show}
      #{figure}
      #{show_errors}
      У Вас осталось ошибок: #{@game.errors_allowed}
    END

    if @game.won?
      puts "Поздравляем, Вы выиграли!".colorize(:green)
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: ".colorize(:red) + @game.word.colorize(:magenta)
    end
  end

  def figure
    FIGURES[@game.errors_made].colorize(:yellow)
  end

  def show_errors
    "Ошибки (#{@game.errors_made}): #{errors_to_show}".colorize(:red)
  end

  def word_to_show
    @game.letters_to_guess.map do |letter|
      letter || ('__' if letter.nil?)
    end.join(' ')
  end

  def errors_to_show
    @game.errors.join(', ')
  end

  def get_input
    print 'Введите следующую букву: '
    gets[0].upcase
  end
end
