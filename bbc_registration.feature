Feature: BBC Registration

  # Scenario:
  #   Given I access the BBC login page
  #     And I click register now
  #     And I click over thirteen
  #   When I enter a date with an invalid days component
  #   Then I get an error telling me that the days component is invalid
  #
  # Scenario:
  #   Given I access the BBC login page
  #     And I click register now
  #     And I click over thirteen
  #   When I enter a date with an invalid months component
  #   Then I get an error telling me that the months component is invalid
  #
  # Scenario:
  #   Given I access the BBC login page
  #     And I click register now
  #     And I click over thirteen
  #   When I enter a date with an invalid years component
  #   Then I get an error telling me that the years component is invalid
  #
  # Scenario:
  #   Given I access the BBC login page
  #     And I click register now
  #     And I click over thirteen
  #     And I enter a valid date
  #   When I enter a an invalid email address
  #   Then I get an error telling me that the email address doesn't look right
  #
  #   Scenario:
  #     Given I access the BBC login page
  #       And I click register now
  #       And I click over thirteen
  #       And I enter a valid date
  #     When I enter a password with less than eight letters then a valid email
  #     Then I get an error telling me that the password is too short
  #
  #   Scenario:
  #     Given I access the BBC login page
  #       And I click register now
  #       And I click over thirteen
  #       And I enter a valid date
  #     When I enter a password with eight letters or more but no other characters then a valid email
  #     Then I get an error telling me that I should have some characters which are not letters in the password
  #
  #     Scenario:
  #     Given I access the BBC login page
  #       And I click register now
  #       And I click over thirteen
  #       And I enter a valid date
  #     When I enter an invalid postcode then go to another field
  #     Then I get an error telling me that the postcode is invalid

      Scenario:
      Given I access the BBC login page
        And I click register now
        And I click over thirteen
        And I enter a valid date
      When I enter a short postcode then go to another field
      Then I get an error telling me that the postcode is too short
