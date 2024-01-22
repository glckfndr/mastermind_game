Feature: Input-output game cycle

  The purpose of the game to guess all colors.
  The computer ganerates random string of length 3 with colors designated
  with letter {r,g,b,y,m,o}
  The gamer have to input three letters from the set {r,g,b,y,m,o} to
  guess colors and press Enter.
  If at least one of the letters is not in the set we get the warning message
  "Type letters only from the set {r,g,b,y,m,o}".
  If input string is correct the rows with previous input appear and at the end
  the of the each row we have verification string with "+*0".
  Where
  "+" means the color and its position is correct,
  "*" means the color is correct but its position is wrong,
  "0" means the color and its position is wrong.
  The gamer will win if he gets "+++" not more than in ten attempts.

  Background: Start Game
    When the game is run
    Then prompt to guess three colors from the set {r,g,b,y,m,o}

  Scenario Outline: Correct input of color
    When input "<input>"
    Then the output should be "<output>"

    Examples:
      | input | output        |
      | bmo   | bmo, 000      |
      | rbg   | rbg, +*0      |
      | gby   | gby, +*0      |
      | yro   | yro, **0      |
      | yrg   | yrg, ***      |
      | rgy   | rgy, +++      |
