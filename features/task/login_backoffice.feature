@selenium
Feature: Login Backoffice mokapos com

   Scenario: As an user, i should login to the Backoffice
   Given I access Backoffice
   When I input email
   And I input password
   And I click login button
   Then I should see dashboard
