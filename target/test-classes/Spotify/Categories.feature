Feature: Spotify Categories

  Background: 
    * header Authorization = 'Bearer ' + tokenID

  Scenario: Get Several Browse Categories
    Given url 'https://api.spotify.com/v1/browse/categories'
    When method GET
    Then status 200
    And print response

  Scenario: Get Single Browse Category
    Given url 'https://api.spotify.com/v1/browse/categories/dinner'
    When method GET
    Then status 200
    And print response
