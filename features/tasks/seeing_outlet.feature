@javascript
Feature: Seeing the outlets item_name

   Scenario: As a user, should be able to see the outlets name
   Given I mokapos website
   When I login into moka website
   Then I should see the outlets name
