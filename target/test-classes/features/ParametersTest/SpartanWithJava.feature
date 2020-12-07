Feature: Karate java integration

   Background:

     * def spartanUrl = 'http://54.205.141.229:8000'

     @ok
  Scenario:  get a spartan with request header
    Given url spartanUrl
    And path "api/spartans"
    And header Accept = 'application/json'
    When method get
    Then status 200


@ppp
   Scenario:  create new spartan

     Given  url spartanUrl
     And path "api/spartans"
     And header Accept = 'application/json'
     And request
     """
        {

        "name": "denemeName",
        "gender": "Male",
        "phone": 12345678910
    }

     """
     When method get
     Then status 200
     And print response

  @abov
Scenario: c reading java method
  #point class that we want  to run
  * def SpartanDataGenerator = Java.type('utilities.SpartanDataGenerator')
  * def newSpartan = SpartanDataGenerator.createSpartan()
  * print newSpartan


