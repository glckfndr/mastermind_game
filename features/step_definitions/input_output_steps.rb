When('the game is run') do
  @old_stdout = $stdout
  @old_stdin = $stdin
  @game = Game.new
end

Then('prompt to guess three colors from the set \{r,g,b,y,m,o}') do
  @prompt = ''
  $stdout = StringIO.new(@prompt)
  @game.play
  $stdout = @old_stdout
  expect(@prompt).to eq("Guess three colors (r,g,b,y,m,o):\n")
end

When('input {string}') do |input|
  @user_respond = "#{input}\n"
end

Then('the output should be {string}') do |output|
  @prompt = ''
  $stdout = StringIO.new(@prompt)
  $stdin = StringIO.new(@user_respond)
  @game.next_step
  expect(@prompt).to eq("#{output}\n")
  $stdin = @old_stdin
  $stdout = @old_stdout
end
