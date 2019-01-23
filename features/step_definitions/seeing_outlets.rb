World(ShowMeTheCookies)
# require 'csv'
# require 'smarter_cv'
require 'curb'

Given("I mokapos website") do
   visit "https://backoffice.mokapos.com"
end

When("I login into moka website") do
   fill_in 'email', :with => 'septiamelia@mailinator.com'
   fill_in 'password', :with => '123456'
   find("#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button").click

   begin

      joss = page.execute_script 'return $("#wrapper>div>div").css("width");'
   end while joss !="0px"
   expect(page).to have_content("DASHBOARD")
end

#method get
Then("I should see the outlets name") do
   @cookiess = get_me_the_cookie('remember_token')
   @params = Curl.get("https://service.mokapos.com/account/v1/profile") do |curl|
      curl.headers['Authorization'] = "#{@cookiess[:value]}"
      # curl.headers['Cookies'] = "remember_token=#{@cookiess[:value]}"
      # curl.headers['content-Type'] = 'application/json'
end
data = JSON.parse @params.body
binding.pry
data_outlets = data["outlets"]
data_outlets_name = data_outlets[0]["name"]
puts "nama outlet = #{data_outlets_name}"

#method post
# ini untuk mengirim data ke #@params_roles
@datas = {"name":"bebassssssss","permission":[39,40,41,42,43,44,45,46,47,48,49]}

@params_roles = Curl.post("https://service.mokapos.com/account/v1/roles", @datas.to_json) do |curl|
   curl.headers['Authorization'] = "#{@cookiess[:value]}"
   #curl.headers['Cookies'] = "remember_token=#{@cookiess[:value]}"
   curl.headers['content-Type'] = 'application/json'
end

hasil = JSON.parse @params_roles.body
binding.pry
end
