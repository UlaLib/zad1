Feature: Authenticate in the application

  Scenario: 
    Given I am a registered user
    When I enter correct login 
    And I enter correct password
    Then I am an authenticated user
    And I can see can see the details view of the account: first name, name, e-mail adress, mailing address