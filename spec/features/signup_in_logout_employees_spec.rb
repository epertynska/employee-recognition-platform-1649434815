require 'rails_helper'

describe 'Registration, log out/in' do
  let(:employee) { build(:employee) }

  before do
    visit new_employee_registration_path
  end

  it 'Sign up, Log out, Log in' do
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    fill_in 'Password confirmation', with: employee.password
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_current_path(root_path)

    click_link 'Logout'
    
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    click_button 'Log in'

    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_current_path(root_path)
  end
end
