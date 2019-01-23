@javascript
Feature: Index Jumbotron MokaPos

Scenario: As an user, i should check sign up button on jumbotron section
Given I visit mokapos web
When I click sign up button on jumbotron section
Then I should redirect to signup page

Scenario: As an user, i should check video on jumbotron section
Given I visit mokapos web
When I click video button on jumbotron section
Then I should see video that show by pop up
And I should be able to pause and play  again the video
And I should be able to close the video too
