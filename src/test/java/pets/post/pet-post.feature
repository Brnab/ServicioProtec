Feature: Post a pet on swagger

  Scenario: post a pet
    * def petBody = read('../json/bodypostpet.json')
    Given url "https://petstore.swagger.io/v2/pet"
    And set petBody.id = "3050"
    And set petBody.name = "Zeus"
    And request petBody
    When method post
    Then status 200
    And match $.name == "Zeus"
    And  def petId = $.id

