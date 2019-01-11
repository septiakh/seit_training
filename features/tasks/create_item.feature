@javascript
Feature: Create item in Backoffice mokapos com

   Scenario: Create item
   Given I on login page
   When I input email
   And I input password
   And I click button login
   Then I should see dashboard
   And I create new item
   Then I should see item list
