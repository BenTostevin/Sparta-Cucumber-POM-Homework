Given("I click register now") do
  @bbc_site.bbc_homepage.click_go_to_register
end


Given("I click over thirteen") do
  @bbc_site.bbc_registration.click_over_13
end

When("I enter a date with an invalid days component") do
  @bbc_site.bbc_registration.enter_wrong_day
  @bbc_site.bbc_registration.click_dob_button
end

Then("I get an error telling me that the days component is invalid") do
  expect(@bbc_site.bbc_registration.red_day).to be true
end

When("I enter a date with an invalid months component") do
  @bbc_site.bbc_registration.enter_wrong_month
  @bbc_site.bbc_registration.click_dob_button
end

Then("I get an error telling me that the months component is invalid") do
  expect(@bbc_site.bbc_registration.red_month).to be true
end

When("I enter a date with an invalid years component") do
  @bbc_site.bbc_registration.enter_wrong_year
  @bbc_site.bbc_registration.click_dob_button
end

Then("I get an error telling me that the years component is invalid") do
  expect(@bbc_site.bbc_registration.red_year).to be true
end

Given("I enter a valid date") do
  @bbc_site.bbc_registration.date_of_birth
  @bbc_site.bbc_registration.click_dob_button
end

When("I enter a an invalid email address") do
  @bbc_site.bbc_registration.fill_invalid_email
end

Then("I get an error telling me that the email address doesn't look right") do
  expect(@bbc_site.bbc_registration.invalid_email_message).to be true
end

When("I enter a password with less than eight letters then a valid email") do
  @bbc_site.bbc_registration.enter_short_password
  @bbc_site.bbc_registration.enter_valid_email
end

Then("I get an error telling me that the password is too short") do
  expect(@bbc_site.bbc_registration.password_too_short).to be true
end

When("I enter a password with eight letters or more but no other characters then a valid email") do
  @bbc_site.bbc_registration.fill_only_letters_password
  @bbc_site.bbc_registration.enter_valid_email
end

Then("I get an error telling me that I should have some characters which are not letters in the password") do
  expect(@bbc_site.bbc_registration.password_is_only_letters).to be true
end

When("I enter an invalid postcode then go to another field") do
  @bbc_site.bbc_registration.enter_invalid_postcode
  @bbc_site.bbc_registration.enter_valid_email
end

Then("I get an error telling me that the postcode is invalid") do
  expect(@bbc_site.bbc_registration.invalid_postcode).to be true
end
