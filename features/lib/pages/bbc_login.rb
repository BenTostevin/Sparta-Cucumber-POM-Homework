require 'capybara/dsl'

class BBC_Login
  include Capybara::DSL

  # Constants
  USERNAME_INPUT = 'username'
  DUMMY_EMAIL = 'nova.sarang@lm0k.com'
  UNREGISTERED_EMAIL = 'railsgod@spartaglobal.com'
  REGISTERED_EMAIL = 'praylee.georgiana@lm0k.com'
  INVALID_USERNAME = 'shfbekfn'
  WORNG_FORMAT_EMAIL = 'btostevin@'


  PASSWORD_INPUT = 'password'
  DUMMY_PASSWORD = 'Password01!'
  SHORT_PASSWORD = 'A'
  LETTERS_PASSWORD = 'gggggggggg'
  EMPTY_PASSWORD = ''

  def fill_email
    fill_in USERNAME_INPUT, with: DUMMY_EMAIL
    sleep 1
  end

  def fill_unregistered_email
    fill_in USERNAME_INPUT, with: UNREGISTERED_EMAIL
    sleep 1
  end

  def fill_registered_email
    fill_in USERNAME_INPUT, with: REGISTERED_EMAIL
    sleep 1
  end

  def fill_invalid_username
    fill_in USERNAME_INPUT, with: INVALID_USERNAME
  end

  def fill_wrong_format_email
    fill_in USERNAME_INPUT, with: WORNG_FORMAT_EMAIL
  end


  def fill_password
    fill_in PASSWORD_INPUT, with: DUMMY_PASSWORD
    sleep 1
  end

  def fill_short_password
    fill_in PASSWORD_INPUT, with: SHORT_PASSWORD
    sleep 1
  end

  def fill_letters_password
    fill_in PASSWORD_INPUT, with: LETTERS_PASSWORD
  end

  def fill_empty_password
    fill_in PASSWORD_INPUT, with: EMPTY_PASSWORD
  end

  def click_submit
    click_button 'Sign in'
    sleep 1
  end


  def unregistered_email
    page.has_content?('Sorry, we can’t find an account with that email.')
  end

  def short_password
    page.has_content?('Sorry, that password is too short.')
  end

  def letters_password
    page.has_content?('Please include something that isn\'t a letter.')
  end

  def invalid_username
    page.has_content?('Sorry, we can’t find an account with that username.')
  end

  def wrong_format_email
    page.has_content?('Sorry, that email doesn’t look right.')
  end

  def password_missing
    page.has_content?('Something\'s missing.')
  end

end
