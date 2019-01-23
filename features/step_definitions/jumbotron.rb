Given("I on mokapos web") do
   visit "https://www.mokapos.com/"
end

When("I check Jumbotron section") do
   find('div.box-jumbotron').text
end

When("I click Coba Moka Gratis button") do
  first('a.btn-sign-up-now-header.pull-left.id').click
end

Then("I should see registration page") do
  page.should have_content ('Start your free 14-day trial now.')
end

# When("I click video button") do
#   find("a#watchnowbuttonindex.btn-sign-up-now-header.pull-left.id").click
# end
#
#   When("I wait for {int} seconds") do |seconds|
#   sleep seconds.to_i
# end
#
#
# Then("I should see video") do
#    have_css('.ytp-player-content ytp-iv-player-content')
# end

# When("I click video button") do
#   find("a#watchnowbuttonindex.btn-sign-up-now-header.pull-left.id").click
# end
#
# Then("I should see video") do
#   puts "Video is played"
# end
#
# Then("I should be able to pause and click again") do
#   within_frame(find("#videoModal > div > div > div > div > iframe"))do
#      sleep 10
#      find("div.html5-video-player").click
#      sleep 3
#      find("div.html5-video-player").click
#   end
# end
#
# Then("I should be able to close the video") do
#   find("#videoModal > div > div > div > div > iframe").click
#   puts "Video has been closed"
#   page.execute_script "window.scrollBy(0, $(window).height())"
#   sleep 3
# end


When("I click Apps store button") do
  find('img.app-store-normal').click
end

Then("I should see App store page") do
   page.should have_content('App Store')
   sleep 10
end

When("I click google play button") do
   find('img.google-play-normal').click
end

Then("I should see google play page") do
   pending
end

When("I check container satu") do
  find("div.container.section-2").text
  sleep 10
end

Then("I should see F&B picture") do
   page.should have_content('F&B')
   sleep 5
end

Then("I should see service business picture") do
  page.should have_content('Service Business')
     sleep 5
end

Then("I should see retail picture") do
   page.should have_content('Retail')
   sleep 5
end
