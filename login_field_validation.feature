Feature: Login field validation

  Scenario: Incorect email adress
    Given I am a regular user
    When I enter incorect email adress
    Then I see validation messages
    
  Scenario: Too long email adress
    Given I am a regular user
    When I enter email adress contains more than 60 characters
    Then I see validation messages
