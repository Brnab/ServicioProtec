Feature: Get a pet on swagger

  Scenario: get a pet by status
    * call read("../post/pet-post.feature")
    * call read("../put/pet-put.feature")
    Given url "https://petstore.swagger.io/v2/pet/findByStatus?status=sold"
    When method get
    Then status 200
    And match $..[?(@.id=="3050")].status == ["sold"]