Given("I access mokapos website") do
   visit "https://mokapos.com/"
end

When("I click Login button") do
  find("a.nav__floatRight__3pl-I.nav__active__13Ucz").click
end

Then("I should see sign in page") do
  page.should have_content('Sign In')
end

When("I click register button") do
   find("a#mpNavRegister.Button__btn__XI5E1.btn.Button__blue__1Gi8j.Button__secondary__e-w7j.nav__floatRight__3pl-I.nav__buttonRegister__3vel8").click
   sleep 3
end

Then("I should redirect to sign up page") do
  page.should have_content ('Start your free 14-day trial now.')
end

#Check POS link
When("I click pos link") do
   find('div > div:nth-child(2) > button').click
   page.should have_content('Rangkuman Fitur')
   sleep 5
end

When("I click rangkuman fitur link") do
   find('div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(1)').click
   sleep 5
end

Then("I should see point of sale page") do
  page.should have_content('Moka Point of Sale')
end

When("I click Manajemen meja link") do
  find('div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(2)').click
  sleep 5
end

Then("I should Manajemen meja page") do
  page.should have_content('Manage Tables')
  sleep 5
end

When("I click Manajemen inventori link") do
  find('div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(3)').click
end

Then("I should Manajemen inventori page") do
   page.should have_content('Track Your')
end

When("I check navbar on header page") do
  find('#__next > div > div:nth-child(1) > div > div.nav__navbar__QBr8L.nav__blue__5sG-W.nav__top32__3vmhV.nav__showNavbar__1RiFj.nav__transparent__1QMOL').text
end

#Check Payments link

When("I click payments link") do
   find('#__next > div > div:nth-child(1) > div > div.nav__navbar__QBr8L.nav__blue__5sG-W.nav__top32__3vmhV.nav__showNavbar__1RiFj.nav__transparent__1QMOL > div > div:nth-child(3) > a').click
end

Then("I should see payments page") do
   page.should have_content('Moka Payments')
   sleep 5
end

#Check Capital link

When("I click capital link") do
   find('#__next > div > div:nth-child(1) > div > div.nav__navbar__QBr8L.nav__blue__5sG-W.nav__top32__3vmhV.nav__showNavbar__1RiFj.nav__transparent__1QMOL > div > div:nth-child(4) > a').click
end

Then("I should see capital page") do
   page.should have_content('Moka Capital')
   sleep 5
end

#Check Lainnya link

When("I click lainnya link") do
   find('div:nth-child(5) > button').click
   page.should have_content('Solusi Bisnis')
   sleep 4
end

When("I click kedai Kopi link") do
   find('div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(2)').click
end

Then("I should see kedai Kopi page") do
   page.should have_content(' Moka untuk Bisnis Kedai Kopi ')
end

When("I click Restoran link") do
  find('div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(3)').click
end

Then("I should see Restoran page") do
   page.should have_content(' Moka untuk Bisnis Restoran ')
end

When("I click barbershop link") do
  find('div.others__submenu__XKTG- > div:nth-child(2) > a:nth-child(2)').click
end

Then("I should see barbershop page") do
   page.should have_content(' Moka untuk Barbershop ')
end
