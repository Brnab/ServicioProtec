Feature: Get a pet on swagger

  Scenario: get a pet by id
    * call read("../post/pet-post.feature")
    Given url "https://petstore.swagger.io/v2/pet/"+ petId
    When method get
    Then status 200
    And match $.name == 'fenix'

