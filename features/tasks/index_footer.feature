@javascript
Feature: Index Footer MokaPOS

Scenario: As a SEIT, i should check the footer on index page mokapos web
Given I open mokapos production website
When I check the Footer
Then I should see that footer appears

Scenario: As a SEIT, i should check the footer on index page mokapos web
Given I open mokapos production website
When I check the Footer
And I click point of sale link on the footer
Then I should redirect to point of sale page

Scenario: As a SEIT, i should check the footer on index page mokapos web
Given I open mokapos production website
When I check the Footer
And I click kedai kopi on the footer
Then I should redirect to kedai kopi page

Scenario: As a SEIT, i should check the footer on index page mokapos web
Given I open mokapos production website
When I check the Footer
And I click harga on the footer
Then I should redirect to harga page

Scenario: As a SEIT, i should check the footer on index page mokapos web
Given I open mokapos production website
When I check the Footer
And I click developers on the footer
Then I should redirect to developers page

Scenario: As a SEIT, i should check the footer on index page mokapos web
Given I open mokapos production website
When I check the Footer
And I click informasi moka on the footer
Then I should redirect to informasi moka page
