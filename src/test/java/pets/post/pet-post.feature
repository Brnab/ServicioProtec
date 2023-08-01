Feature: Post a pet on swagger

  Scenario: Put a pet
    * def petBody = read('../json/bodypet.json')
    Given url "https://petstore.swagger.io/v2/pet"
    And request petBody
    When method post
    Then status 200
