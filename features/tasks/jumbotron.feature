@javascript
Feature: Jumbotron mokapos com

   Scenario: Jumbotron button coba gratis
   Given I on mokapos web
   When I check Jumbotron section
   And I click Coba Moka Gratis button
   Then I should see registration page

   Scenario: Jumbotron button video
   Given I on mokapos web
   When I check Jumbotron section
   And I click video button
   Then  I should see video
   Then I should be able to pause and click again
   Then I should be able to close the video

   Scenario: Jumbotron Apps Strore
   Given I on mokapos web
   When I check Jumbotron section
   And I click Apps store button
   Then I should see App store page

   Scenario: Jumbotron Google play
   Given I on mokapos web
   When I check Jumbotron section
   And I click google play button
   Then I should see google play page

   Scenario: Container satu
   Given I on mokapos web
   When I check container satu
   Then I should see F&B picture
   And I should see service business picture
   And I should see retail picture
