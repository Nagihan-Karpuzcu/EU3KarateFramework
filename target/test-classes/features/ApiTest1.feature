Feature:  exchange rate api tests

  Scenario:  basic test with  status code validation
     Given url 'https://api.exchangeratesapi.io/latest'
     When method GET
     Then status 200

     Scenario:  get rets fro specific day
       Given 'https://api.exchangeratesapi.io/2010-01-02'
       When method get
       Then status 200
Scenario: header verification

  Given 'https://api.exchangeratesapi.io/2010-01-02'
  When method get
  Then status 200
  And match header Content-Type == 'application/json'
  And match header Vary == 'Accept-Encoding'
  And match  header Connection == 'keep-alive'
  And match header Date == '#present'
    #this equals to headers().hasHeaderWithName("headername") in restassured

  @wip
 Scenario:  json body verifivation
    Given 'https://api.exchangeratesapi.io/2010-01-02'
    When method get
    Then status 200
    And match header Content-Type == 'application/json'
    And print response
    And print response.base
    And match response.base == 'EUR'
     And match  response.rates.
    And match response.rates.USD=='#present'
    And match response.rates.USD==1.4481
