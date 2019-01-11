@javascript
Feature: navbar mokapos com

   Scenario: Navbar about
   Given I open mokapos website
   When I click about button
   Then I should see about page

   Scenario: Navbar pricing
   Given I open mokapos website
   When I click pricing  button
   Then I should see pricing page

   Scenario: Navbar featuress
   Given I open mokapos website
   When I click featuress  button
   Then I should see featuress page

   Scenario: Navbar Login
   Given I open mokapos website
   When I click login  button
   Then I should see login page

   Scenario: navbar Business type
   Given I open mokapos website
   When I click business type button
   And I click quick service restaurant button
   Then I should see quick service restaurant page

   Scenario: Navbar sign up
   Given I open mokapos website
   When I click sign up button
   Then I should see sign up page
