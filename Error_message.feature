Feature: Display the error message

  Scenario: Incorrect data
    Given I am a regular user
    When I enter incorrect login, password or I am not registered user
    Then The authentication process is failed
    And I see the error message: "Authentication failed. Login or password is incorrect." 