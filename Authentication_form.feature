Feature: Authentication form

  Scenario: Authentication form contains two fields: "login" and "password"
    Given I am a regular user
    When I go to authentication form
    Then I see two fields: "login" and "password"
    And I can fill fields: "login" and "password"