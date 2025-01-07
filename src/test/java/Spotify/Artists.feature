Feature: Spotify Artist

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get Artist
    Given url 'https://api.spotify.com/v1/artists/0oOet2f43PA68X5RxKobEy'
    When method GET
    Then status 200
    And print response

  Scenario: Get Several Artists
    Given url 'https://api.spotify.com/v1/artists?ids=0oOet2f43PA68X5RxKobEy%2C5yHnIri2Bj5Ysuaki6VOVy'
    When method GET
    Then status 200
    And print response

  Scenario: Get Artist Albums
    Given url 'https://api.spotify.com/v1/artists/5yHnIri2Bj5Ysuaki6VOVy/albums'
    When method GET
    Then status 200
    And print response

  Scenario: Get Artist Top Tracks
    Given url 'https://api.spotify.com/v1/artists/5yHnIri2Bj5Ysuaki6VOVy/top-tracks'
    When method GET
    Then status 200
    And print response
