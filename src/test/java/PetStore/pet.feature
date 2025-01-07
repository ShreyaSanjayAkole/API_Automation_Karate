Feature: Pet Store

  Scenario: Add a new pet to the store
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id":1,"category":{"id":1,"name":"kitu"},"name":"doggie","photoUrls":["string"],"tags":[{"id":0,"name":"kitu"}],"status":"available"}
    When method POST
    Then status 200
    And print response

  Scenario: Update an existing pet
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id":1,"category":{"id":1,"name":"brono"},"name":"doggie","photoUrls":["string"],"tags":[{"id":1,"name":"brono"}],"status":"sold"}
    When method PUT
    Then status 200
    And print response

  Scenario: Finds pets by status
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    When method GET
    Then status 200
    And print response

  Scenario: Finds pets by ID
    Given url 'https://petstore.swagger.io/v2/pet/1'
    When method GET
    Then status 200
    And print response

  Scenario: Delete pet
    Given url 'https://petstore.swagger.io/v2/pet/1'
    When method DELETE
    Then status 200
    And print response
