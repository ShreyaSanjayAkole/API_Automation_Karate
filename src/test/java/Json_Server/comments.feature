Feature: Json Server

  Scenario: create comment
    Given url 'http://localhost:3000/comments'
    And request {"id": "2","body": "first comment","postId": 2}
    When method POST
    Then status 201
    And print response

  Scenario: Get all comments
    Given url 'http://localhost:3000/comments'
    When method GET
    Then status 200
    And print response

  Scenario: Update comment
    Given url 'http://localhost:3000/comments/2'
    And request {"id": "2","body": "Updated first comment","postId": 2}
    When method PUT
    Then status 200
    And print response

  Scenario: Delete comment
    Given url 'http://localhost:3000/comments/2'
    When method DELETE
    Then status 200
    And print response
