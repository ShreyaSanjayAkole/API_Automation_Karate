Feature: Spotify Tracks

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get Track
    Given url 'https://api.spotify.com/v1/tracks/11dFghVXANMlKmJXsNCbNl'
    When method GET
    Then status 200
    And print response

  Scenario: Get Several Tracks
    Given url 'https://api.spotify.com/v1/tracks?ids=7ouMYWpwJ422jRcDASZB7P%2C4VqPOruhp5EdPBeR92t6lQ%2C2takcwOaAZWiXQijPHIx7B'
    When method GET
    Then status 200
    And print response

  Scenario: Get User Saved Tracks
    Given url 'https://api.spotify.com/v1/me/tracks'
    When method GET
    Then status 200
    And print response

  Scenario: Save Tracks for Current User
    Given url 'https://api.spotify.com/v1/me/tracks?ids=7ouMYWpwJ422jRcDASZB7P%2C4VqPOruhp5EdPBeR92t6lQ%2C2takcwOaAZWiXQijPHIx7B'
    And request {}
    When method PUT
    Then status 200
    And print response

  Scenario: Remove User Saved Tracks
    Given url 'https://api.spotify.com/v1/me/tracks?ids=7ouMYWpwJ422jRcDASZB7P%2C4VqPOruhp5EdPBeR92t6lQ'
    When method DELETE
    Then status 200
    And print response

  Scenario: Check User Saved Tracks
    Given url 'https://api.spotify.com/v1/me/tracks/contains?ids=7ouMYWpwJ422jRcDASZB7P%2C4VqPOruhp5EdPBeR92t6lQ%2C2takcwOaAZWiXQijPHIx7B'
    When method GET
    Then status 200
    And print response
