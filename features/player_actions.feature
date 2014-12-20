Feature: Player Actions
  Scenario: Hire an Employee
    Given a player with 500 credits
    And there is 1 employee in the job pool
    Then the player should be able to hire 1 employee

  Scenario: Buy a Building
    Given a player with 500 credits
    And a standard setup
    Then the player should be able to buy a factory
