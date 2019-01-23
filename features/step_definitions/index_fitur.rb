Given("I try to access mokapos website") do
  visit "https://mokapos.com/"
end

When("I check POS Section") do
  find('#__next > div > section:nth-child(3) > div > div:nth-child(2) > h2.SectionInfo__heading__1-DMW').text
  sleep 5
end

When("I click a button on POS section") do
   find('#__next > div > section:nth-child(3) > div > div:nth-child(2) > a').click
   sleep 4
end

Then("I should redirect to POS page") do
  page.should have_content('Moka Point of Sale')
end

When("I check payments Section") do
   find('#__next > div > section:nth-child(4) > div > div:nth-child(2) > h2.SectionInfo__heading__1-DMW').text
   sleep 5
   end

When("I click a button on payments section") do
   find('#__next > div > section:nth-child(4) > div > div:nth-child(2) > a').click
end

Then("I should redirect to payments page") do
   page.should have_content('Moka Payments')
   sleep 5
end

When("I check capitl Section") do
  find('#__next > div > section:nth-child(5) > div > div:nth-child(2) > h2.SectionInfo__heading__1-DMW').text
  sleep 5
end

When("I click a button on capital section") do
  find('#__next > div > section:nth-child(5) > div > div:nth-child(2) > a').click
  sleep 5
end

Then("I should redirect to capital page") do
   page.should have_content('Moka Capital')
   sleep 5
end
