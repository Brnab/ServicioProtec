Feature: Post a pet on swagger

  Scenario: post a pet
    * def petBody = read('../json/bodypostpet.json')
    Given url "https://petstore.swagger.io/v2/pet"
    And set petBody.id = '3050'
    And request petBody
    When method post
    Then status 200
    And  def petId = $.id
