Feature: Get full vulnerability list
  Scenario: Database already with vulnerability list
    Given that the full vulnerabilities list was requested
    When the function runs
    And database contains the NIST vulnerability list
    Then the vulnerabilites list must be read
    And the function must return the full list with success

  Scenario: Database without vulnerability list
    Given that the full vulnerabilities list was requested
    When the function runs
    And database doesnt contains the NIST vulnerability list
    Then the NIST vulnerabilites must be obtained
    And be saved on database
    And the function must return the full list with success
