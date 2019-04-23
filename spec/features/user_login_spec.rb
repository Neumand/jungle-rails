require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do

  # SETUP
  before :each do
    @user = User.create!(first_name: 'John', last_name: 'Doyle', email: 'jdoyle@example.com', password: 'Junglebook')
  end

  scenario 'They are successfully logged in' do
    visit root_path
    click_link 'Login'
    sleep 1
    fill_in 'email', with: 'jdoyle@example.com'
    fill_in 'password', with: 'Junglebook'
    click_button('Submit')
    sleep 1
    save_screenshot 'logged-in.png'
    expect(page).to have_text('Welcome, John!')
  end

end
