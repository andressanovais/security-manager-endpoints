Feature: Get list of filtered vulnerabilites, filtering out the solved vulnerabilities
  Scenario: Filtered vulnerabilities from existent id
    Given that the filtered vulnerabilities list was requested for a specific id
    When the function runs
    And the specified id exists in the database
    Then the existent vulnerabilites of the specified id must be read from database
    And the NIST vulnerabilites list must be read from database
    And the difference of existent vulnerabilites for that id and NIST vulnerabilites must be returned with success

  Scenario: Filtered vulnerabilities from nonexistent id
    Given that the filtered vulnerabilities list was requested for a specific id
    When the function runs
    And the id nonexists in the database
    Then a "no content" response must be returned

  Scenario: NIST vulnerability list empty
    Given that the filtered vulnerabilities list was requested for a specific id
    And the function started running
    And the specified id exists in the database
    And the existent vulnerabilites of the specified id was read from database
    When NIST vulnerabilities list doesnt exists on database
    Then the NIST vulnerabilities list must be obtained
    And saved on database
    And the difference of existent vulnerabilites for that id and NIST vulnerabilites must be returned with success
