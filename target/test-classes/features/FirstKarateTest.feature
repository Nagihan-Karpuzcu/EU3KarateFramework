Feature: Welcome to Karate
  #karate make explanation easy nnot otomate

   Scenario: how to print
      Given print  "Hello World"
      When print 'another printt'
      Then  print  'then print'

#----------------------------------


       Scenario:  more printing
          Given print 'some words to print'
    #* represent given.. keyword
          * print 'my name is', 'nagihankarate'
   # virgul concanate to string here
   #, -> concat two strings + 1 white space
             * print 2+2

#----------------------------------


          Scenario: variables
             * def name = 'Mike'
   #def olunca string vs demion
   *  print 'may name is ' + name
   # + for concat ama eger virgul koyarsan space olur
   *  print 'may name is ' , name
   * def age = 28
   * print name,'is',age, 'years old'


#----------------------------------


    Scenario: difficult parameters :json object
      * def student ={'name : 'sam',owes_tuition': false}
   #* def student = 'mike'  yerine {'name : 'sam',owes_tuition': false}
   * print student
      #bu hem sam hem false verir ama asagidaki specific olursa json cevirmis oluyorsun kisadan
      * print student.name
      * print student.owes_tuition


  #----------------------------------


      Scenario: json object 2

           # json straktrer yazacaksan ""
         # you can copy paste json body here

         * def student =
         """
         {
         "firstName" :"Steven"
         "lastName": "King"
         "salary": 5222
          }
           """
       * print student.salary
         * print student.firstName

#----------------------------------

          Scenario:  spartan variable
             """
                 {
        "id": 119,
        "name": "putName",
        "gender": "Male",
        "phone": 12345678910
            }

             """
             * print spartan.gender
             * print spartan.phone
             * print spartan.name
             * print spartan.id

#----------------------------------

             Scenario: json array objects
                * def  students =
                """
             [
              {'name : 'sam',
              owes_tuition': false
              },

                {'name : 'Mike',
                owes_tuition': false
                }
             ]
                """

                 * print students
                * print students[0].name
                * print student[1].owes_tuition