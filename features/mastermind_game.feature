Feature: MasterMind Game

  Scenario Outline: Player attempts to guess colors
    Given the computer generates a string "rgy" of length 3 with colors form set {r, g, b, y, m, o}
    When the player inputs "<input>" three letters from the set {r, g, b, y, m, o} and presses Enter
    Then the game provides feedback with a verification string "<feedback>" that can contain only letter "+*0"
    Examples:
      | Input | Feedback |
      | bmo   | 000      |
      | rbg   | +*0      |
      | gby   | +*0      |
      | yro   | **0      |
      | yrg   | ***      |
      | rgy   | +++      |

  Scenario: Player receives a warning for incorrect input
    Given the computer generates a random string of length 3 with colors {r, g, b, y, m, o}
    When the player inputs at least one incorrect letter and presses Enter
    Then the game displays a warning message "Type letters only from the set {r, g, b, y, m, o}"

  Scenario Outline: Player wins the game within ten attempts
    Given the computer generates a random string of length 3 with colors {r, g, b, y, m, o}
    When the player makes multiple attempts to guess the colors within ten tries
    Then the game announces the player's victory if the feedback is "+++" within the attempts limit
