Feature: Spotify Episodes

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get Several Episodes
    Given url 'https://api.spotify.com/v1/episodes?ids=77o6BIVlYM3msb4MMIL1jH%2C0Q86acNRm6V9GYx55SXKwf'
    When method GET
    Then status 200
    And print response

  Scenario: Get User Saved Episodes
    Given url 'https://api.spotify.com/v1/me/episodes'
    When method GET
    Then status 200
    And print response

  Scenario: Save Episodes for Current User
    Given url 'https://api.spotify.com/v1/me/episodes?ids=77o6BIVlYM3msb4MMIL1jH%2C0Q86acNRm6V9GYx55SXKwf'
    And request {}
    When method PUT
    Then status 200
    And print response

  Scenario: Remove User Saved Episodes
    Given url 'https://api.spotify.com/v1/me/episodes?ids=7ouMYWpwJ422jRcDASZB7P%2C4VqPOruhp5EdPBeR92t6lQ%2C2takcwOaAZWiXQijPHIx7B'
    When method DELETE
    Then status 200
    And print response

  Scenario: Check User's Saved Episodes
    Given url 'https://api.spotify.com/v1/me/episodes/contains?ids=77o6BIVlYM3msb4MMIL1jH%2C0Q86acNRm6V9GYx55SXKwf'
    When method GET
    Then status 200
    And print response
