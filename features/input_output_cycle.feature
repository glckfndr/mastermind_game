Feature: Input-output game cycle
  Background: Start Game
    When the game is run
    Then prompt to guess four colors from the set {r,g,b,y,m,o}

  Scenario: Correct input of color
    When input "<input>"
    Then the output should be"<output>"

  Examples:
  | input |   output        |
  |  r    |  "r, your next move" |
  |  g    |  "g, your next move" |
  |  b    |  "b, your next move" |
