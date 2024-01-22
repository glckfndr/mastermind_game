require 'stringio'

def simulate_keyboard_input(input)
  original_stdin = $stdin
  $stdin = StringIO.new(input)

  # Your code that reads from standard input goes here
  loop do
    user_input = gets.chomp
    puts "User entered: #{user_input}"
    break if user_input == "q"
  end

  puts "I quit!"
ensure
  $stdin = original_stdin
end

# Example usage:
simulate_keyboard_input(['Hello!', "Who are You?", "I am Computer!", 'q'].join("\n"))
