Feature: Authenticate to the application

    Background:
        Given the following users are register
        | login          | password |
        | login1@test.pl | Abcd     |
        | login2@test.pl | 1234     |

    Scenario Outline: Login
        Given I am a registered user
        When I enter login <login>
        And I enter password <password>
        Then I am an authenticated user
        And I can see can see the details view of the account: first name <first-name>, name <name>, e-mail adress <login>, mailing address <adress>
    
        Examples:
        | login          | password | first-name | name  | adress   |
        | login1@test.pl | Abcd     | Ala        | Nowak | Miasto 1 |

    Scenerio Outline: Display the error message
        Given I am a regular user
        When I enter login incorrect <incorrect-login> login or incorrect password <incorrect-password>
        Then The authentication process is failed
        And I see the error message: "Authentication failed. Login or password is incorrect." 
        
        Examples:
        | incorrect-login | incorrect-password |
        | login3@test.pl  | Efgh               |
        | login1@test.pl  | 1234               |
        | login2@test.pl  | tttt               |

    Scenario: Incorect email adress
        Given I am a regular user
        When I enter incorect email adress
        Then I see validation messages
    
    Scenario Outline: Too long email adress
        Given I am a regular user
        When I enter email adress contains more than 60 characters <email>
        Then I see validation messages

        Examples:
        |email                                                         |
        |123456789012345678901234567890123456789012345678901234@test.pl|
        |12345678901234567890123456789012345678901234567890123@test.pl |

