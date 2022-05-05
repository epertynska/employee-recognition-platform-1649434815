require 'rails_helper'

RSpec.describe 'Admin login' do
  let(:employee) { build(:employee) }

  it '/admins page login' do
    visit new_employee_registration_path
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    fill_in 'Password confirmation', with: employee.password
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_current_path(root_path)
    click_link 'Logout'
    visit '/admins'
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_content 'How are you doing today?'
    click_link 'Logout'
  end
end
