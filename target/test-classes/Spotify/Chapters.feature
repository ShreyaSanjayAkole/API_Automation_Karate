Feature: Spotify Chapters

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get a Chapter
    Given url 'https://api.spotify.com/v1/chapters/0D5wENdkdwbqlrHoaJ9g29'
    When method GET
    Then status 404
    And print response

  Scenario: Get Several Chapters
    Given url 'https://api.spotify.com/v1/chapters?ids=0IsXVP0JmcB2adSE338GkK%2C3ZXb8FKZGU0EHALYX6uCzU%2C0D5wENdkdwbqlrHoaJ9g29'
    When method GET
    Then status 200
    And print response
