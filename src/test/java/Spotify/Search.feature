Feature: Spotify Search

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Search for Item
    Given url 'https://api.spotify.com/v1/search?q=5pPyvA03RKSJrAnnDcq0nh&type=track'
    When method GET
    Then status 200
    And print response
