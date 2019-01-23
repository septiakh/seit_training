Given("I access index page") do
  visit "https://mokapos.com/"
end


When("I check testimonial") do
   find("#__next > div > section.Section5__section__oNgJp > div > h2").text
end

# #Firts Testimonial
When("I click the first testimonial") do
  find('#carouselTestimonial > ol > li:nth-child(1)').click
  sleep 4
  find('#carouselTestimonial > div.carousel-inner.Testimonial__slide-container__38m2B > div.carousel-item.Slide__slide__sclon.active > a > div.Slide__play-button__2OPpA').click
  sleep 10
  find('#videoModal > div > div > div > button').click
end

Then("I should see the fisrt testimonial") do
  puts "Fisrt testimonial appeas"
end

#Second Testimonial
When("I click the second testimonial") do
   find('#carouselTestimonial > ol > li:nth-child(2)').click
   sleep 4
   find('#carouselTestimonial > div.carousel-inner.Testimonial__slide-container__38m2B > div.carousel-item.Slide__slide__sclon.active > a > div.Slide__play-button__2OPpA').click
   sleep 10
   find('#videoModal > div > div > div > button').click
end

Then("I should see the second testimonial") do
  puts "Second testimonial appears"
end

#Third Testimonial

When("I click the third testimonial") do
   find('#carouselTestimonial > ol > li:nth-child(3)').click
   sleep 4
   find('div.carousel-item.Slide__slide__sclon.active > a > img').click
   sleep 5
end

Then("I should see the third testimonial") do
  switch_to_window(windows.last)
  puts "Third Testimonial appears"
end

When("I click the fourth testimonial") do
   find('#carouselTestimonial > ol > li:nth-child(4)').click
   sleep 4
   find('div.carousel-item.Slide__slide__sclon.active > a > img').click
   sleep 5
end

Then("I should see the fourth testimonial") do
   switch_to_window(windows.last)
   puts "fourth Testimonial appears"
end


# Prev button

When("I click the prev button on the testimonial") do
  find('#carouselTestimonial > div.Arrows__arrow-container__2_5gN > a.carousel-control-prev.Arrows__arrow__1l2VZ > img').click
end

Then("I see the prev testimonial appears") do
  puts"Prev button works well"
end

#Next button

When("I click the next button on the testimonial") do
  find('#carouselTestimonial > div.Arrows__arrow-container__2_5gN > a.carousel-control-next.Arrows__arrow__1l2VZ > img').click
end

Then("I see the next testimonial appears") do
  puts"Next button works well"
end
