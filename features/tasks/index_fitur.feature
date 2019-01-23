@javascript
Feature: Index mokapos com

Scenario: As an SEIT, i should check index page on pos section
Given I try to access mokapos website
When I check POS Section
And I click a button on POS section
Then I should redirect to POS page

Scenario: As an SEIT, i should check index page on payment section
Given I try to access mokapos website
When I check payments Section
And I click a button on payments section
Then I should redirect to payments page

Scenario: As an SEIT, i should check index page on capital section
Given I try to access mokapos website
When I check capitl Section
And I click a button on capital section
Then I should redirect to capital page
