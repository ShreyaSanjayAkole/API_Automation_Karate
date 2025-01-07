Feature: Json Server

  Scenario: create profile
    Given url 'http://localhost:3000/profile'
    And request {"id":"1", "name": "first profile"}
    When method POST
    Then status 201
    And print response

  Scenario: Get all profiles
    Given url 'http://localhost:3000/profile'
    When method GET
    Then status 200
    And print response

  Scenario: Update profile
    Given url 'http://localhost:3000/profile/1'
    And request {"name": "Updated first profile"}
    When method PUT
    Then status 200
    And print response

  Scenario: Delete profile
    Given url 'http://localhost:3000/profile/1'
    When method DELETE
    Then status 200
    And print response
