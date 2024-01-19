When('the game is run') do
  @old_stdout = $stdout
  @old_stdin = $stdin

  @game = Game.new
end

Then('prompt to guess four colors from the set \{r,g,b,y,m,o}') do
  @prompt = ''
  $stdout = StringIO.new(@prompt)

  @game.play
  expect(@prompt).to eq('Guess your color (r,g,b,y,m,o):' + "\n")
end

When('input {string}') do |input|
  @prompt = ''
  $stdout = StringIO.new(@prompt)

  @user_respond = input + "\n"
  $stdin = StringIO.new(@user_respond)
end

Then('the output should be"{string}"') do |output|
  @game.next_step
  expect(@prompt).to eq(output + "\n")
end
