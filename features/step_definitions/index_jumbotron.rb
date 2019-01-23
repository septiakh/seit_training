Given("I visit mokapos web") do
   visit "https://mokapos.com/"
end

When("I click sign up button on jumbotron section") do
   find("a#mpNavRegister.Button__btn__XI5E1.btn.Button__blue__1Gi8j.Button__secondary__e-w7j.nav__floatRight__3pl-I.nav__buttonRegister__3vel8").click
   sleep 3
end

Then("I should redirect to signup page") do
  page.should have_content ('Start your free 14-day trial now.')
end

When("I click video button on jumbotron section") do
  find("#__next > div > div.Jumbotron__jumbotron__26wSR > div > button").click
end

Then("I should see video that show by pop up") do
 puts "Video is played"
end

Then("I should be able to pause and play  again the video") do
   within_frame(find("#videoModal > div > div > div > div > iframe"))do
   sleep 10
   find("div.html5-video-player").click
   sleep 3
   find("div.html5-video-player").click
   end
end

Then("I should be able to close the video too") do
   find("#videoModal > div > div > div > div > iframe").click
   puts "Video has been closed"
   page.execute_script "window.scrollBy(0, $(window).height())"
    sleep 3
end
