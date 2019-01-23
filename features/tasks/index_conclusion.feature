@javascript
Feature: Index conclusion MokaPOS

Scenario: As a SEIT, i should check conclusion section on index mokapos com
Given I access production MokaPOS website
When I check conclusion Section
And I check the photo
Then I see that photo appears

Scenario: As a SEIT, i should check conclusion section on index mokapos com
Given I access production MokaPOS website
When I check conclusion Section
And I click the button on conclusion section
Then I redirect to contant us page

Scenario: As a SEIT, i should check conclusion section on index mokapos com
Given I access production MokaPOS website
When I check conclusion Section
And I click the register button on conclusion section
Then I redirect to sign up page
