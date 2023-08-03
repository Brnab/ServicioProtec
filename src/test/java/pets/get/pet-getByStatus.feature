Feature: Get a pet on swagger

  Scenario: get a pet by status
    * call read("../put/pet-put.feature")
    Given url "https://petstore.swagger.io/v2/pet/findByStatus?status=sold"
    When method get
    Then status 200
    And match petStatus == "sold"

   # And match response $.status
   # And match $ contains deep { "id: '3050'" }
   # And def foundPets = karate.filter(response, function(x){ return x.id == #(petId | toNumber()) && x.status == 'sold' })

  #  And match foundPets != []