Given("I access production MokaPOS website") do
  visit "https://mokapos.com/"
end

When("I check conclusion Section") do
  find('#__next > div > section:nth-child(9) > div').text
end

When("I check the photo") do
   find('#__next > div > section:nth-child(9) > div > div.SectionInfo__image__1NiLK.SectionInfo__col__3SQii > img').text
   sleep 5
end

Then("I see that photo appears") do
  puts "The photo appears"
  sleep 5
end

When("I click the button on conclusion section") do
   find('#__next > div > section:nth-child(9) > div > div:nth-child(2) > a').click
end

Then("I redirect to contant us page") do
   page.should have_content('Contact Us')
   sleep 5
end

When("I click the register button on conclusion section") do
   find('#mpIndexRegister2').click
 end

Then("I redirect to sign up page") do
  page.should have_content('Start your free 14-day trial now.')
end
