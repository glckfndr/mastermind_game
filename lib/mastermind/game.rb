class Game
  include ColorGenerator
  def initialize
    @code = 'rgy'
  end

  def play
    puts 'Guess three colors (r,g,b,y,m,o):'
  end

  def next_step
    user_input = $stdin.gets.chomp
    puts "#{user_input}, #{compare(user_input)}"
  end

  def compare(guess)
    comp = '000'
    code = @code.clone
    chars = []

    s = 0
    3.times do |i|
      next unless code[i] == guess[i]

      chars.append(code[i])
      code[i] = '-'
    end

    chars.each do
      comp[s] = '+'
      s += 1
    end

    guess.chars do |ch|
      3.times do |i|
        next unless code[i] == ch

        comp[s] = '*'
        s += 1
        code[i] = '-'
      end
    end

    comp
  end
end
