Feature: Spotify Playlists

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Create Playlist
    Given url 'https://api.spotify.com/v1/users/314jc2wmnwn5tod4ewxjiyyrkb4e/playlists'
   	And request {"name":"Second Playlist","description":"New hindi songs","public":false}
    When method POST
    Then status 201
    And print response

  Scenario: Get Playlist
    Given url 'https://api.spotify.com/v1/playlists/428alWGrRTdbtGiaVVaSjr'
    When method GET
    Then status 200
    And print response

  Scenario: Add Items to Playlist
    Given url 'https://api.spotify.com/v1/playlists/428alWGrRTdbtGiaVVaSjr/tracks'
    And request {"uris":["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M","spotify:episode:512ojhOuo1ktJprKbVcKyQ"]}
    When method POST
    Then status 201
    And print response

  Scenario: Remove Playlist Items
    Given url 'https://api.spotify.com/v1/playlists/428alWGrRTdbtGiaVVaSjr/tracks'
    And request {"tracks":[{"uri":"spotify:track:4iV5W9uYEdYUVa79Axb7Rh"}],"snapshot_id":"AAAAAh+ObvbSTnaKIMWjkl0lDJdw08s"}
    When method DELETE
    Then status 200
    And print response

  Scenario: Change Playlist Details
    Given url 'https://api.spotify.com/v1/playlists/428alWGrRTdbtGiaVVaSjr'
    And request {"name":"Updated Playlist Name","description":"Updated playlist description","public":false}
    When method PUT
    Then status 200
    And print response

  Scenario: Get Playlist Items
    Given url 'https://api.spotify.com/v1/playlists/428alWGrRTdbtGiaVVaSjr/tracks'
    When method GET
    Then status 200
    And print response

  Scenario: Update Playlist Items
    Given url 'https://api.spotify.com/v1/playlists/428alWGrRTdbtGiaVVaSjr/tracks'
    And request {"range_start":0,"insert_before":1,"range_length":2}
    When method PUT
    Then status 200
    And print response

  Scenario: Get Current User Playlists
    Given url 'https://api.spotify.com/v1/me/playlists'
    When method GET
    Then status 200
    And print response

  Scenario: Get User Playlists
    Given url 'https://api.spotify.com/v1/users/314jc2wmnwn5tod4ewxjiyyrkb4e/playlists'
    When method GET
    Then status 200
    And print response

  Scenario: Get Playlist Cover Image
    Given url 'https://api.spotify.com/v1/playlists/428alWGrRTdbtGiaVVaSjr/images'
    When method GET
    Then status 200
    And print response
