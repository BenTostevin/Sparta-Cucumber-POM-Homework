require 'capybara/dsl'

class BBC_Registration
  include Capybara::DSL

  # Constants
  REGISTRATION_SUBMIT = '#submit-button'

  def click_over_13
    click_link('13 or over')
    sleep 1
  end

  def date_of_birth
    fill_in('Day', with: '16')
    fill_in('Month', with: '11')
    fill_in('Year', with: '1993')
    sleep 1
  end

  def click_dob_button
    click_button 'Continue'
    sleep 1
  end

  def enter_email(email)
    fill_in('Email', with: email)
    sleep 1
  end

  def enter_password
    fill_in('Password', with: 'SecurePassword1!')
    sleep 1
  end

  def enter_postcode
    fill_in('Postcode', with: 'TW10 6TF')
    sleep 1
  end

  def enter_gender
    select 'Male', from: 'gender'
    sleep 1
  end

  def choose_email_updtaes
    all('.button__text-wrapper')[1].click
    sleep 1
  end

  def click_register
    find(REGISTRATION_SUBMIT).click
    sleep 1
  end

  def check_registered
    has_content?("You're now signed in")
  end

  # def check_registered_again
  #   page.find('title').text
  # end


  def enter_wrong_day
    fill_in('Day', with: '32')
    fill_in('Month', with: '1')
    fill_in('Year', with: '1993')
    sleep 1
  end

  def enter_wrong_month
    fill_in('Day', with: '20')
    fill_in('Month', with: '13')
    fill_in('Year', with: '1993')
    sleep 1
  end

  def enter_wrong_year
    fill_in('Day', with: '20')
    fill_in('Month', with: '1')
    fill_in('Year', with: '1093')
    sleep 1
  end

  def red_day
    has_content?("Oops, that day doesn't look right.")
  end

  def red_month
    has_content?("Oops, that month doesn't look right.")
  end

  def red_year
    has_content?("Sorry, that year doesn’t seem right.")
  end

  def fill_invalid_email
    fill_in('Email', with: '@railsgod')
    find('#password').click
  end

  def invalid_email_message
    has_content?("Sorry, that email doesn’t look right.")
  end

  def enter_valid_email
    fill_in('Email', with: 'btostevin@spartaglobal.com')
    sleep 1
  end

  def enter_short_password
    fill_in('Password', with: 'A')
    sleep 1
  end

  def password_too_short
    has_content?('Sorry, that password is too short.')
  end

  def fill_only_letters_password
    fill_in('Password', with: 'Abcdefghij')
  end

  def password_is_only_letters
    has_content?('Sorry, that password isn\'t valid. Please include something that isn\'t a letter.')
  end

  def enter_invalid_postcode
    fill_in('Postcode', with: 'PO14R')
    sleep 1
  end

  def invalid_postcode
    has_content?('Sorry, that postcode isn\'t valid.')
  end

end
