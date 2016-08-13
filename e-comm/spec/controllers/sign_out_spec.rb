require 'rails_helper'
require 'support/helpers/session_helpers'
RSpec.configure do |config|
  config.include Features::SessionHelpers
end

# Feature: Sign out
#   As a user
#   I want to sign out
#   So I can protect my account from unauthorized access
describe 'Sign out' do

  # Scenario: User signs out successfully
  #   Given I am signed in
  #   When I sign out
  #   Then I see a signed out message
  it 'user signs out successfully' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Logout'
    click_link 'Logout'
    expect(page).to have_content 'Login'
  end

end

