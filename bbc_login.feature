Feature: BBC Login

  Scenario: Inputting incorrect username credentials shows an error
    Given I access the BBC login page
      And I input incorrect username details
      And I input incorrect password details
    When I try to login
    Then I receive an error telling me that the username is invalid

  Scenario: Inputting correct username credentials and incorrect password credentials shows an error
    Given I access the BBC login page
      And I input correct username details
      And I input incorrect password details
    When I try to login
    Then I receive an error telling me that the email is unregistered
