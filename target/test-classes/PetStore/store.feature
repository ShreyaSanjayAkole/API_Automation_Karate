Feature: Pet store

  Scenario: Returns pet inventories by status
    Given url 'https://petstore.swagger.io/v2/store/inventory'
    When method GET
    Then status 200
    And print response

  Scenario: Place an order for a pet
    Given url 'https://petstore.swagger.io/v2/store/order'
    And request {"id":1,"petId":1,"quantity":1,"shipDate":"2024-12-27T11:48:23.273Z","status":"placed","complete":true}
    When method POST
    Then status 200
    And print response

  Scenario: Find purchase order by ID
    Given url 'https://petstore.swagger.io/v2/store/order/1'
    When method GET
    Then status 200
    And print response

  Scenario: Delete purchase order by ID
    Given url 'https://petstore.swagger.io/v2/store/order/1'
    When method DELETE
    Then status 200
    And print response
