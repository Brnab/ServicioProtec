Feature: Put a pet on swagger

  Scenario: put a pet

    * call read("../post/pet-post.feature")

   Given url "https://petstore.swagger.io/v2/pet"
    And request { "id": "#(petId)", "category": { "id": 0, "name": "string" }, "name": "Shippo", "photoUrls": [ "string" ], "tags": [ { "id": 0, "name": "string" } ], "status": "sold" }
    When method put
    Then status 200
    And def petStatus = $.status