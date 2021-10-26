@tag
Feature: Sqr

  Scenario: square of positive number
    Given Input value 4
    When I press sqr button
    Then I expect the result 2

  Scenario: square of negative number
    Given Input value -3
    When I press sqr button
    Then I expect the result Not defined

  Scenario Outline: square of number
    Given Input value <value>
    When I press sqr button
    Then I expect the result <result>

    Examples:
      | value | result            |
      | 1     | 1                 |
      | -1    | Not defined       |
      | 16    | 4                 |
      | 26    | 5.099019513592785 |
      | 121   | 11                |
      | -80   | Not defined       |
      | 0     | 0                 |
      | -32   | Not defined       |
      | 30    | 5.477225575051661 |