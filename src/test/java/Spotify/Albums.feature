Feature: Spotify Albums

  Background: 
    # Load the base URL and token from karate-config.js
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get album
    Given url 'https://api.spotify.com/v1/albums/5tenzflqCjH0SmgvkUULlp'
    When method GET
    Then status 200
    And print response

  Scenario: Get Several Albums
    Given url 'https://api.spotify.com/v1/albums?ids=382ObEPsp2rxGrnsizN5TX%2C1A2GTWGtFfWp7KSQTwWOyo%2C2noRn2Aes5aoNVsU6iWThc'
    When method GET
    Then status 200
    And print response

  Scenario: Get Album Tracks
    Given url 'https://api.spotify.com/v1/albums/4aawyAB9vmqN3uQ7FjRGTy/tracks'
   	When method GET
    Then status 200
    And print response

  Scenario: Get User Saved Albums
    Given url 'https://api.spotify.com/v1/me/albums'
    When method GET
    Then status 200
    And print response

  Scenario: Save Albums for Current User
    Given url 'https://api.spotify.com/v1/me/albums'
    And param ids = read('Albums.json').ids.join(',')
    And request { "ids": ids }
    When method PUT
    Then status 200
    And print response

  Scenario: Remove Users' Saved Albums
    Given url 'https://api.spotify.com/v1/me/albums'
    And request { "ids": ["4aawyAB9vmqN3uQ7FjRGTy"] }
    When method DELETE
    Then status 200
    And print response


  Scenario: Check User's Saved Albums
    Given url 'https://api.spotify.com/v1/me/albums/contains?ids=382ObEPsp2rxGrnsizN5TX%2C1A2GTWGtFfWp7KSQTwWOyo%2C2noRn2Aes5aoNVsU6iWThc'
    When method GET
    Then status 200
    And print response

  Scenario: Get New Releases
    Given url 'https://api.spotify.com/v1/browse/new-releases'
    When method GET
    Then status 200
    And print response
