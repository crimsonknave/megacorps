Feature: Earnings Stage
  Scenario: Pay for Employees
    Given a player with 2 employees
    When the Earnings Stage occurs
    Then the player pays the employee's salary
