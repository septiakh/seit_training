Given("I get in mokapos website") do
  visit "https://mokapos.com/"
end

When("I check business type section") do
  find('#__next > div > section.Section4__section__2c8O0 > div > h2').text
  sleep 5
end

When("I click Kedai Kopi button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(1)").click
   sleep 5
end

Then("I redirect to Kedai Kopi page") do
   page.should have_content ('Moka')
   sleep 5
end

When("I click restoran button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(2)").click
   sleep 5
end

Then("I redirect to restoran page") do
   page.should have_content ('Moka')
   sleep 5
end

When("I click restoran cepat saji button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(3)").click
   sleep 5
end

Then("I redirect to restoran cepat saji page") do
   page.should have_content ('Moka')
   sleep 5
end

When("I click toko roti button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(4)").click
  sleep 5
end

Then("I redirect to toko roti page") do
   page.should have_content ('Moka')
   sleep 5
end

When("I click retail button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(5)").click
   sleep 5
end

Then("I redirect to retail page") do
   page.should have_content('Moka')
end

When("I click minimarket button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(6)").click
   sleep 5
end

Then("I redirect to minimarket page") do
  page.should have_content('retail')
end

When("I click barbershop & salon button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(7)").click
   sleep 5
end

Then("I redirect to barbershop & salon page") do
   page.should have_content(' Moka untuk Barbershop ')
end

When("I click layanan kecantikan button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(8)").click
   sleep 5
end

Then("I redirect to layanan kecantikan page") do
   page.should have_content('salon')
end

When("I click layanan profesional  button on business type section") do
   find("#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(9)").click
   sleep 5
end

Then("I redirect to layanan profesional page") do
  page.should have_content('MokaPOS | Aplikasi Kasir Berbasis Online Nomor 1 Di Indonesia')
end
