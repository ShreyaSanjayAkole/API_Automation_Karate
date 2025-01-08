Feature: Pet Store

  Scenario: Create user
    Given url 'https://petstore.swagger.io/v2/user'
    And def users = read('Users.csv')
    And def row = users[3]
    And request row
    When method POST
    Then status 200
    And print response

  Scenario: Creates list of users with given input array
    Given url 'https://petstore.swagger.io/v2/user/createWithArray'
    And def users = read('Users.csv')
    And def usersArray = karate.map(users, function(x){ return { id: x.id, username: x.username, firstName: x.firstName, lastName: x.lastName, email: x.email, password: x.password, phone: x.phone, userStatus: x.userStatus }})
    And request usersArray
    When method POST
    Then status 200
    And print response

  Scenario: Login
    Given url 'https://petstore.swagger.io/v2/user/login'
    And def users = read('Users.csv')
    And def usersArray = karate.map(users, function(x){ return {username: x.username,password: x.password}})
    And request usersArray
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
