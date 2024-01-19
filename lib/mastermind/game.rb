class Game
  def play
    # loop do
    puts 'Guess your color (r,g,b,y,m,o):'
  end

  def next_step
    user_input = gets.chomp
    puts "#{user_input}, your next move"
  end
end
