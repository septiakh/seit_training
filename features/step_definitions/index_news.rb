Given("I access mokapos production website") do
   visit "https://mokapos.com/"
end

When("I check official news partner on index page") do
  find('#__next > div > section.index__press__38KMH > ul').text
end

When("I click the business time logo") do
   find('#__next > div > section.index__press__38KMH > ul > li:nth-child(1) > a > img').click
   sleep 5
end

Then("I should see business time page") do
  switch_to_window(windows.last)
  sleep 5
end

When("I click the kompas logo") do
   find('#__next > div > section.index__press__38KMH > ul > li:nth-child(2) > a > img').click
   sleep 5
end

Then("I should see kompas page") do
   switch_to_window(windows.last)
   sleep 5
end

When("I click the Tech Crunch logo") do
   find('#__next > div > section.index__press__38KMH > ul > li:nth-child(3) > a > img').click
   sleep 5
end

Then("I should see Tech Crunch page") do
   switch_to_window(windows.last)
   sleep 5
end

When("I click the Tech in Asia logo") do
   find('#__next > div > section.index__press__38KMH > ul > li:nth-child(4) > a > img').click
  sleep 5
end

Then("I should see Tech in Asia page") do
   switch_to_window(windows.last)
   sleep 5
end

When("I click the Jakarta post logo") do
   find('#__next > div > section.index__press__38KMH > ul > li:nth-child(5) > a > img').click
   sleep 5
end

Then("I should see the Jakarta post page") do
   switch_to_window(windows.last)
   sleep 5
end
