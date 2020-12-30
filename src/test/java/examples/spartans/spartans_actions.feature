Feature: Spartans App Feature testing
# Use this ip address that has spartan app with no auth
# So we can just focus on writing feature file correctly
  Background:
    * url 'http://52.201.187.226:8000/'

  Scenario: User should be able to call /api/hello to get greeting
    Given path '/api/hello'
    When method get
    Then status 200
    # checking content type header
    Then header Content-Type = 'text/plain;charset=UTF-8'