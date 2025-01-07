Feature: Spotify Markets

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get Available Markets
    Given url 'https://api.spotify.com/v1/markets'
    When method GET
    Then status 200
    And print response