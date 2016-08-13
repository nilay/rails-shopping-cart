require 'rails_helper'
require 'support/helpers/session_helpers'
RSpec.configure do |config|
  config.include Features::SessionHelpers
end
# Feature: Add Product
describe 'Product Add' do
  # Scenario: User cannot add product with incomplete information
  it 'User cannot add product with incomplete information' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit 'products/new'
    click_button 'Submit'
    expect(page).to have_content 'Please review the problems below:'
  end

end
