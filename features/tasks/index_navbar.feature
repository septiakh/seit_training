@javascript
Feature: Index Navbar MokaPOS

Scenario: As an user, i should check login page on index mokapos com
Given I access mokapos revamp website
When I click Login button
Then I should see sign in page

Scenario:  As an user, i should check register page on index mokapos com
Given I access mokapos revamp website
When I click register button
Then I should redirect to sign up page

Scenario: As an user, i should check pos fisrt submenu on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click pos link
And I click rangkuman fitur link
Then I should see point of sale page

Scenario: As an user, i should check pos second submenu on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click pos link
And I click Manajemen meja link
Then I should Manajemen meja page

Scenario: As an user, i should check pos third submenu on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click pos link
And I click Manajemen inventori link
Then I should Manajemen inventori page

Scenario: As an user, i should check payments page on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click payments link
Then I should see payments page

Scenario: As an user, i should check capital page on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click capital link
Then I should see capital page

Scenario: As an user, i should check capital page on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click capital link
Then I should see capital page

Scenario: As an user, i should check lainnya first submenu on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click lainnya link
And I click kedai Kopi link
Then I should see kedai Kopi page

Scenario: As an user, i should check lainnya second submenu on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click lainnya link
And I click Restoran link
Then I should see Restoran page

Scenario: As an user, i should check lainnya third submenu on index mokapos com
Given I access mokapos website
When I check navbar on header page
And I click lainnya link
And I click barbershop link
Then I should see barbershop page
