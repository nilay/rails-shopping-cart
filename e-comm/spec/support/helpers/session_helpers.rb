module Features
  module SessionHelpers
    def sign_up_with(email, password)
      visit '/users/new'
      fill_in 'email', with: email
      fill_in 'password', with: password
      fill_in 'first_name', with: 'Dummy'
      fill_in 'last_name', with: 'Anand'
      click_button 'Submit'
    end

    def signin(email, password)
      visit '/login/new'
      fill_in 'email', with: email
      fill_in 'Password', with: password
      click_button 'Submit'
    end
  end
end
