Feature: Get summarized information about full NIST vulnerabilities list with each vulnerability severity
   Scenario: Database already with vulnerability list
    Given that the vulnerabilities list was requested
    When the function runs
    And database contains the NIST vulnerabilities list
    Then the vulnerabilites list must be read
    And the function must return the full list with each vulnerability severity

  Scenario: Database without vulnerability list
    Given that the full vulnerabilities list was requested
    When the function runs
    And database doesnt contains the NIST vulnerabilities list
    Then the NIST vulnerabilites must be obtained
    And be saved on database
    And the function must return the full list with each vulnerability severity