@javascript
Feature: Create Item library

Scenario Outline: Create Item <item_name>
Given I on login page mokapos website
When I fill in email and password
And I click sign in button
And I success login
And I create <item_name> in library page
Then I should see <item_result>

Examples:
| item_name | item_result |
| item_1 | item_1 |
| item_2 | item_2 |
| item_3 | item_3 |
| item_4 | item_4 |
| item_5 | item_5 |
