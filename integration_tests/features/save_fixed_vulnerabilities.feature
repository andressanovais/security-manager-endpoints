Feature: Saving of vulnerabilities that have been solved
   Scenario: Invalid item
    Given that a list of fixed vulnerabilities was sent
    And the function started running
    When the request body received isnt valid
    Then an error must be returned
    And the list must not be saved on database

  Scenario: Success
    Given that a list of fixed vulnerabilities was sent
    And the function started running
    When the request body received is valid
    Then the list must be saved on database
