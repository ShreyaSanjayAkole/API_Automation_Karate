Feature: Spotify Audibooks

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get an Audiobook
    Given url 'https://api.spotify.com/v1/audiobooks/18yVqkdbdRvS24c0Ilj2ci'
    When method GET
    Then status 404
    And print response

  Scenario: Get Several Audiobooks
    Given url 'https://api.spotify.com/v1/audiobooks?ids=18yVqkdbdRvS24c0Ilj2ci%2C1HGw3J3NxZO1TP1BTtVhpZ%2C7iHfbu1YPACw6oZPAFJtqe'
    When method GET
    Then status 200
    And print response

  Scenario: Get Audiobook Chapters
    Given url 'https://api.spotify.com/v1/audiobooks/7iHfbu1YPACw6oZPAFJtqe/chapters'
    When method GET
    Then status 404
    And print response

  Scenario: Get User Saved Audiobooks
    Given url 'https://api.spotify.com/v1/me/audiobooks'
    When method GET
    Then status 200
    And print response

  Scenario: Save Audiobooks for Current User
    Given url 'https://api.spotify.com/v1/me/audiobooks?ids=18yVqkdbdRvS24c0Ilj2ci%2C1HGw3J3NxZO1TP1BTtVhpZ%2C7iHfbu1YPACw6oZPAFJtqe'
    And request {}
    When method PUT
    Then status 200
    And print response

  Scenario: Remove User Saved Audiobooks
    Given url 'https://api.spotify.com/v1/me/audiobooks?ids=18yVqkdbdRvS24c0Ilj2ci%2C1HGw3J3NxZO1TP1BTtVhpZ%2C7iHfbu1YPACw6oZPAFJtqe'
    When method DELETE
    Then status 200
    And print response

  Scenario: Check User Saved Audiobooks
    Given url 'https://api.spotify.com/v1/me/audiobooks/contains?ids=18yVqkdbdRvS24c0Ilj2ci%2C1HGw3J3NxZO1TP1BTtVhpZ%2C7iHfbu1YPACw6oZPAFJtqe'
    When method GET
    Then status 200
    And print response
