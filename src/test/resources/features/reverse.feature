@tag
Feature: Reverse

  Scenario: reverse of positive number
    Given Input value 4
    When I press rvs button
    Then I expect the result 0.25

  Scenario: reverse of negative number
    Given Input value -10
    When I press rvs button
    Then I expect the result -0.1

  Scenario: reverse of 0
    Given Input value 0
    When I press rvs button
    Then I expect the result Not defined

  Scenario Outline: reverse of number
    Given Input value <value>
    When I press rvs button
    Then I expect the result <result>
    Examples:
      | value    | result      |
      | 1        | 1           |
      | -1       | -1          |
      | 2        | 0.5         |
      | -5       | -0.2        |
      | 30       | 0.033333    |
      | -80      | -0.0125     |
      | 20000000 | 0.00000005  |
      | 0        | Not defined |