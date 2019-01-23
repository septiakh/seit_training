@javascript
Feature: Index testimonial MokaPOS

Scenario: As a SEIT, i should check testimonial on index page
Given I access index page
When I check testimonial
And I click the first testimonial
Then I should see the fisrt testimonial

Scenario: As a SEIT, i should check testimonial on index page
Given I access index page
When I check testimonial
And I click the second testimonial
Then I should see the second testimonial

Scenario: As a SEIT, i should check testimonial on index page
Given I access index page
When I check testimonial
And I click the third testimonial
Then I should see the third testimonial

Scenario: As a SEIT, i should check testimonial on index page
Given I access index page
When I check testimonial
And I click the fourth testimonial
Then I should see the fourth testimonial

Scenario: As a SEIT, i should check testimonial on index page
Given I access index page
When I click the prev button on the testimonial
Then I see the prev testimonial appears

Scenario: As a SEIT, i should check testimonial on index page
Given I access index page
When I click the next button on the testimonial
Then I see the next testimonial appears   
