Feature: WebService call

  Scenario Outline: sending PUT request
    Given User wants to make webservice "<apiName>" "<endpoint>" request
     When User sets Header parameters
      | x-rapidapi-host | restcountries-v1.p.rapidapi.com                    |
      | x-rapidapi-key  | b42bf2a0f0msh9f2ced883e4e79ep1c821bjsn899a3c43ec0c |
      And User sets Query parameters
      | dep |
      | qa  |
      And User sends PUT request "<requestBody>"
     Then User recieves status code "<statusCode>"
      And User validates response body

    Examples: 
      | apiName  | endpoint                    | statusCode | request body                    |
      | userList | https://reqres.in/api/users |        200 | '{"name":"Denis","job":"SDET"}' |
