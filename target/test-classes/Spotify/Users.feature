Feature: Spotify Users

  Background: 
    # Load the base URL and token from karate-config.js
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get Current User Profile
    Given url 'https://api.spotify.com/v1/me'
    When method GET
    Then status 200
    And print response

  Scenario: Get User Top Items
    Given url 'https://api.spotify.com/v1/me'
    When method GET
    Then status 200
    And print response

  Scenario: Get User Profile
    Given url 'https://api.spotify.com/v1/users/314jc2wmnwn5tod4ewxjiyyrkb4e'
    When method GET
    Then status 200
    And print response

  Scenario: Follow Playlist
    Given url 'https://api.spotify.com/v1/playlists/422ndFvhEJRdeJ86qj4FaB/followers'
    And request {"public": false }
    When method PUT
    Then status 200
    And print response

  Scenario: Unfollow Playlist
    Given url 'https://api.spotify.com/v1/playlists/422ndFvhEJRdeJ86qj4FaB/followers'
    When method DELETE
    Then status 200
    And print response

  Scenario: Get Followed Artists
    Given url 'https://api.spotify.com/v1/me/following?type=artist'
    When method GET
    Then status 200
    And print response

  Scenario: Follow Artists or Users
    Given url 'https://api.spotify.com/v1/me/following?type=artist&ids=2CIMQHirSU0MQqyYHq0eOx%2C57dN52uHvrHOxijzpIgu3E%2C1vCWHaC5f2uS3yhpwWbIA6'
    And request {}
    When method PUT
    Then status 204
    And print response

  Scenario: Unfollow Artists or Users
    Given url 'https://api.spotify.com/v1/me/following?type=artist'
    And request { "ids": ["2CIMQHirSU0MQqyYHq0eOx", "57dN52uHvrHOxijzpIgu3E", "1vCWHaC5f2uS3yhpwWbIA6"] }
    When method DELETE
    Then status 204
    And print response

  Scenario: Check If User Follows Artists or Users
    Given url 'https://api.spotify.com/v1/me/following/contains?type=artist&ids=0oOet2f43PA68X5RxKobEy'
    When method GET
    Then status 200
    And print response

  Scenario: Check if Current User Follows Playlist
    Given url 'https://api.spotify.com/v1/playlists/422ndFvhEJRdeJ86qj4FaB/followers/contains'
    When method GET
    Then status 200
    And print response
