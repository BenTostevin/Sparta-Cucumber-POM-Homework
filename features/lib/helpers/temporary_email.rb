require 'capybara/dsl'

class TempEmail
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.minuteinbox.com/'
  EMAIL_TAG = '#email'

  def visit_minute_inbox
    visit(HOMEPAGE_URL)
    sleep 1
  end

  def click_delete
    all('.delete-tab')[1].click

  end

  def get_email
    find(EMAIL_TAG).text
  end
end

# email = TempEmail.new
# email.visit_minute_inbox
# email.get_email
