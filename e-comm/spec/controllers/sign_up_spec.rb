require 'rails_helper'
require 'support/helpers/session_helpers'
RSpec.configure do |config|
  config.include Features::SessionHelpers
end

# Feature: Sign up
#   As a visitor
#   I want to sign in
describe 'Sign up' do
  # Scenario: User cannot sign up with incomplete information
  it 'user cannot sign up with incomplete information' do
    visit 'users/new'
    click_button 'Submit'
    expect(page).to have_content 'Please review the problems below:'
  end

end
