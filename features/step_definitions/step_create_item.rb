Given("I on login page") do
  visit "https://backoffice-staging.mokapos.com"
end

When("I input email") do
  fill_in 'email', :with => 'wdh@mailinator.com'
end

When("I input password") do
   fill_in 'password', :with => '123456'
end

When("I click button login") do
  find("#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button").click
end

Then("I should see dashboard") do
  page.should have_content ('Dashboard')
end

Then("I create new item") do
   find("#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button").click
end

Then("I should see item list") do

end
