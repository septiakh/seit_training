@javascript
Feature: Index mokapos com

      Scenario: Check Navbar Login
      Given I access mokapos revamp website
      When I click Login  link
      Then I should see Login page

      Scenario: Check Navbar Coba Gratis
      Given I access mokapos revamp website
      When I click Coba Gratis button
      Then I shoud redirect to registration page

      Scenario: Check Jumbotron Coba Gratis Sekarang
      Given I access mokapos revamp website
      When I click Coba Gratis Sekarang button
      Then I shoud redirect to sign up page

      Scenario: Check Jumbotron video
      Given I on mokapos web
      When I click video button
      Then  I should see video
      And I should be able to pause and click again
      And I should be able to close the video

      Scenario: Check POS section
      Given I on mokapos web
      When I click button pelajari lebih lanjut on POS section
      Then I should see POS page

      Scenario: Check Payments section
      Given I on mokapos web
      When I click button pelajari lebih lanjut on Payment section
      Then I should see payment page

      Scenario: Check Capital section
      Given I on mokapos web
      When I click button pelajari lebih lanjut on Capital section
      Then I should see Capital page

      Scenario: Check business type
      Given I on mokapos web
      When I click Kedai Kopi button
      Then I should see Kedai Kopi page

      Scenario: Check business type
      Given I on mokapos web
      When I click restoran button
      Then I should see restoran page

      Scenario: Check business type
      Given I on mokapos web
      When I click restoran cepat saji button
      Then I should see restoran cepat saji page

      Scenario: Check business type
      Given I on mokapos web
      When I click toko roti button
      Then I should see toko roti page
