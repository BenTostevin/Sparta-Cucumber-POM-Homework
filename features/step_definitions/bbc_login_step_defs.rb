Given("I access the BBC login page") do
  @bbc_site = BBC_Site.new
  @bbc_site.bbc_homepage.visit_home_page
  @bbc_site.bbc_homepage.click_sign_in_link
end

Given("I input incorrect username details") do
  @bbc_site.bbc_login.fill_email
end

Given("I input incorrect password details") do
  @bbc_site.bbc_login.fill_password
end

When("I try to login") do
  @bbc_site.bbc_login.click_submit
end

Then("I receive an error telling me that the username is invalid") do
  expect(@bbc_site.bbc_login.invalid_username).to be true
end


Given("I input correct username details") do
  @bbc_site.bbc_login.fill_email
end

Then("I receive an error telling me that the email is unregistered") do
  expect(@bbc_site.bbc_login.unregistered_email).to be true
end
