require 'rails_helper'
require 'support/helpers/session_helpers'
RSpec.configure do |config|
  config.include Features::SessionHelpers
end

# Feature: Sign in
#   As a user
#   I want to sign in
#   So I can visit protected areas of the site
describe 'Sign in' do
  # Scenario: User cannot sign in if not registered
  #   Given I do not exist as a user
  #   When I sign in with valid credentials
  #   Then I see an invalid credentials message
  it 'user cannot sign in if not registered' do
    signin('test@example.com', 'please123')
    expect(page).to have_content 'Invalid email or password'
  end

  # Scenario: User can sign in with valid credentials
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with valid credentials
  #   Then I see a success message
  it 'user can sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Logout'
  end


end
