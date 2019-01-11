Given("I open mokapos website") do
   visit "https://mokapos.com"
end

When("I click about button") do
  find("a#about-menu.text-center").click
end

Then("I should see about page") do
  page.should have_content ("Tentang Moka POS")
end


When("I click pricing  button") do
  find("a#pricing-menu.text-center").click
end

Then("I should see pricing page") do
  page.should have_content ("Harga Moka POS")
end

When("I click featuress  button") do
 find("a#features-menu.text-center").click
end

Then("I should see featuress page") do
   page.should have_content ("Simple,")
end

When("I click login  button") do
  find("a#login-menu.text-center").click
end

Then("I should see login page") do
  visit "https://backoffice.mokapos.com/login"
end

When("I click business type button") do
   find("#menu2").click
end

When("I click quick service restaurant button") do
   find("div.business-type-container.visible-md.visible-lg > div:nth-child(2) > a:nth-child(1)").click
end

Then("I should see quick service restaurant page") do
   page.should have_content ('Moka untuk Bisnis Restoran Cepat Saji')
end

When("I click sign up button") do
   find(" a#signup-menu.btn-sign-up-now-header").click
end

Then("I should see sign up page") do
  page.should have_content ('Start your free 14-day trial now.')
end
