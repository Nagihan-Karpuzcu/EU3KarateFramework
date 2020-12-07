Feature: using match keyword


   Scenario: some matchiing example
    * def name = 'serverus snape'
    #assertion yerine match kullioz
  * match name == 'serverus snape'
    #assertEquals(name , "serverus snape");
  * match name != 'tom riddle'


    Scenario: more matching example

       * def employee =
      """

      {
      "first_name":"TJ",
      "salary": 2400,
      "active":true
      }
      """

      * def emp_name = employee.first_name
      * match  emp_name =="TJ"
      *  match  employee.salary == 2400


      #-----------------------------
   Scenario:  fuzzy matching
     * def employee =
      """

      {
      "first_name":"TJ",
      "salary": 2400,
      "active":true
      }
      """
     * match  employee.first_name == '#string'
   # hata verir bunda   * match  employee.first_name == '#number'

    * match employee.slary =='#number'
     * match employee.active=='#boolean'
     * match employee.last_name== '#notpresent'


     #-----------------------------

  Scenario: more matching example

    * def employee =
  """
  {
  "first_name":"TJ",
  "salary": 2800,
  "active":true
  },

      {
      "first_name":"Steven",
      "salary": 2100,
      "active":true
      }

      """
    * def length = employees.length
    * print  length
    * match  length == 2
    * match  employees contains { "first_name":"TJ" , "salary":2800, "active":true}

