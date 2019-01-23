Given("I open mokapos production website") do
   visit "https://mokapos.com/"
end

When("I check the Footer") do
  find('#__next > div > div.Footer__footer__sMOOQ').text
  sleep 5
end

Then("I should see that footer appears") do
  puts "The footer appears"
end

When("I click point of sale link on the footer") do
  find('section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(1) > a').click
  sleep 4
end

Then("I should redirect to point of sale page") do
   page.should have_content('Moka Point of Sale')
   sleep 4
end

When("I click kedai kopi on the footer") do
   find('section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(1) > a').click
   sleep 4
end

Then("I should redirect to kedai kopi page") do
   page.should have_content(' Moka untuk Bisnis Kedai Kopi ')
end

When("I click harga on the footer") do
   find('section.Footer__main-footer__NaqRw > div:nth-child(3) > ul > li:nth-child(1) > a').click
 sleep 4
end

Then("I should redirect to harga page") do
   page.should have_content('Harga Moka POS')
end

When("I click developers on the footer") do
   find('section.Footer__main-footer__NaqRw > div:nth-child(4) > ul > li:nth-child(1) > a').click
 sleep 4
end

Then("I should redirect to developers page") do
  page.should have_content('Moka')
end

When("I click informasi moka on the footer") do
   find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(5) > ul.FooterColumn__link-list__1iKCk > li:nth-child(1) > a').click
 sleep 4
end

Then("I should redirect to informasi moka page") do
  page.should have_content(' Tentang Moka POS ')
end
