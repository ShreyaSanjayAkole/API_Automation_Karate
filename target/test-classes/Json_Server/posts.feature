Feature: Json Server

  Scenario: Create post
    Given url 'http://localhost:3000/posts'
    And request {"id": "3","title": "Api Automation","author": "Sam"}
    When method POST
    Then status 201
    And print response

  Scenario: Get all posts
    Given url 'http://localhost:3000/posts'
    When method GET
    Then status 200
    And print response

  Scenario: Update post
    Given url 'http://localhost:3000/posts/3'
    And request {"id": "3","title": "QA Automation","author": "Shreya"}
    When method PUT
    Then status 200
    And print response

  Scenario: Delete post
    Given url 'http://localhost:3000/posts/3'
    When method DELETE
    Then status 200
    And print response
