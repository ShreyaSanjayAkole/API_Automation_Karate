Feature: Pet Store

  Scenario: Create user
    Given url 'https://petstore.swagger.io/v2/user'
    And request {"id":1,"username":"ShreyaAkole","firstName":"Shreya","lastName":"Akole","email":"shreya@gmail.com","password":"ShreyaAkole","phone":"1234567890","userStatus":0}
    When method POST
    Then status 200
    And print response

  Scenario: Creates list of users with given input array
    Given url 'https://petstore.swagger.io/v2/user/createWithArray'
    And request [{"id":2,"username":"SamK","firstName":"Sam","lastName":"Kankrale","email":"sam@gmail.com","password":"SamK","phone":"1234567890","userStatus":0},{"id":3,"username":"Shiva","firstName":"Shivam","lastName":"Wani","email":"shivam@gmail.com","password":"Shiva","phone":"1234567890","userStatus":0}]
    When method POST
    Then status 200
    And print response

  Scenario: Login
    Given url 'https://petstore.swagger.io/v2/user/login?username=ShreyaAkole&password=ShreyaAkole'
    When method GET
    Then status 200
    And print response

  Scenario: Get user by user name
    Given url 'https://petstore.swagger.io/v2/user/string'
    When method GET
    Then status 200

  Scenario: Update User
    Given url 'https://petstore.swagger.io/v2/user/ShreyaAkole'
    And request {"id":1,"username":"ShreyaAkole","firstName":"Shreya","lastName":"Kankrale","email":"shreya@gmail.com","password":"ShreyaAkole","phone":"1234567890","userStatus":0}
    When method PUT
    Then status 200

  Scenario: Delete user
    Given url 'https://petstore.swagger.io/v2/user/ShreyaAkole'
    When method DELETE
    Then status 200

  Scenario: Logout
    Given url 'https://petstore.swagger.io/v2/user/logout'
    When method GET
    Then status 200
