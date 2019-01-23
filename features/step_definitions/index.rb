Given("I access mokapos revamp website") do
  visit "https://staging.mokapos.com"
end

When("I click Login  link") do
  find("a.nav__floatRight__3pl-I.nav__active__13Ucz").click
end

Then("I should see Login page") do
   page.should have_content ('Sign In')
end

When("I click Coba Gratis button") do
   find("a#mpNavRegister.Button__btn__XI5E1.btn.Button__blue__1Gi8j.Button__secondary__e-w7j.nav__floatRight__3pl-I.nav__buttonRegister__3vel8").click
   sleep 3

end
Then("I shoud redirect to registration page") do
  page.should have_content ('Start your free 14-day trial now.')
end

When("I click Coba Gratis Sekarang button") do
  find("a#mpIndexRegister1.Button__btn__XI5E1.btn.Button__blue__1Gi8j.Button__primary__1z6BX.Jumbotron__cta-btn__93xRD").click
  sleep 5
end

Then("I shoud redirect to sign up page") do
   page.should have_content ('Signing up to Moka is just one step away - no credit cards, commitments, or contracts.')
end

# When("I click video button") do
#    find("a#watchnowbuttonindex.btn-sign-up-now-header.pull-left.id").click
# end
#
# Then("I should see video") do
#    puts "Video is played"
# end
#
# Then("I should be able to pause and click again") do
#    within_frame(find("#videoModal > div > div > div > div > iframe"))do
#      sleep 10
#      find("div.html5-video-player").click
#      sleep 3
#      find("div.html5-video-player").click
#      end
# end
#
# Then("I should be able to close the video") do
#    find("#videoModal > div > div > div > div > iframe").click
#       puts "Video has been closed"
#       page.execute_script "window.scrollBy(0, $(window).height())"
#       sleep 3
# end

When("I click button pelajari lebih lanjut") do
      find("#__next > div > div:nth-child(1) > div > div.nav__navbar__QBr8L.nav__blue__5sG-W.nav__top32__3vmhV.nav__showNavbar__1RiFj.nav__transparent__1QMOL > div > div:nth-child(3) > a'").click
end

Then("I should see POS page") do
  pending # Write code here that turns the phrase above into concrete actions
 end

When("I click Kedai Kopi button") do
   find('img.Section4__icon___C-S_').click
   sleep 5
end

Then("I should see kedai kopi page") do
   Page.should have_content (' Moka untuk Bisnis Kedai Kopi ')
end


When("I click button pelajari lebih lanjut on POS section") do
  find('#__next > div > section:nth-child(3) > div > div:nth-child(2) > a').click
end

Then("I should see POS page") do
   page.should have_content("Moka Point of Sale")
   sleep 5
end

When("I click button pelajari lebih lanjut on Payment section") do
  find('#__next > div > section:nth-child(4) > div > div:nth-child(2) > a').click
end

Then("I should see payment page") do
  page.should have_content('Moka Payments')
  sleep 3
end

When("I click button pelajari lebih lanjut on Capital section") do
  find('#__next > div > section:nth-child(5) > div > div:nth-child(2) > a').click
end

Then("I should see Capital page") do
  page.should have_content('Moka Capital')
  sleep 5
end

When("I click Kedai Kopi button") do
  find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(1)").click
  sleep 5
end

Then("I should see Kedai Kopi page") do
   page.should have_content ('Moka')
   sleep 5
end

When("I click restoran button") do
  find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(2)").click
end

Then("I should see restoran page") do
  page.should have_content('Moka')
  sleep 5
end

When("I click restoran cepat saji button") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(3)").click
end

Then("I should see restoran cepat saji page") do
   page.should have_content('Moka')
   sleep 5
end

When("I click toko roti button") do
  find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(4)").click
end

Then("I should see toko roti page") do
   page.should have_content('MokaPOS')
end
