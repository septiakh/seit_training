# Given("I on backoffice mokapos") do
#    visit "https://backoffice.mokapos.com/login"
# end
#
# When("I Login backoffice") do
#    fill_in 'email', :with => 'septiamelia@mailinator.com'
#    fill_in 'password', :with => '123456'
#    find("#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button").click
# end
#
# When("I success login") do
#    page.should have_content('Dashboard')
# end
#
# When("I create item_{int} in library page") do |int|
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I should see item_{int}") do |int|
#   pending # Write code here that turns the phrase above into concrete actions
# end

Given("I on login page mokapos website") do
  visit "https://backoffice.mokapos.com/login"
end

When("I fill in email and password") do
   fill_in 'email', :with => 'septiamelia@mailinator.com'
   fill_in 'password', :with => '123456'
end

When("I click sign in button") do
  find("#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button").click

  begin
      loading = page.execute_script 'return $("#wrapper > div:nth-child(1) > div:nth-child(1)").css("width");'
  end while loading != '0px'
end

When("I success login") do
   page.should have_content('DASHBOARD')
   begin
       loading = page.execute_script 'return $("#wrapper > div:nth-child(1) > div:nth-child(1)").css("width");'
   end while loading != '0px'
end

When("I create item_{int} in library page") do |item_name|
   find('#sidebar-wrapper > ul > li.dropdown.library > a').click
   find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(1) > a').click
   sleep 5
   find('span > ul > li.app-pages-Library-Item-ActionBar-__ActionBar___2tDXG.li-total-item.visible-md.visible-lg > button').click
   sleep 10
   fill_in('name',:with => "#{item_name}")   # find('button:nth-child(3)').click
   click_button ('Save')
   sleep 3
end

Then("I should see item_{int}") do |item_result|
   list = page.all("tbody > tr > td:nth-child(1)", :text => "#{item_result}").count
   puts list
end
