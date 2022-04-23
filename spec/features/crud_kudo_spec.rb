require 'rails_helper'

RSpec.describe 'Create, update or remove Kudo test:' do
  let(:employee) { build(:employee) }

  before do
    visit new_employee_registration_path
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    fill_in 'Password confirmation', with: employee.password
    click_button 'Sign up'
  end

  it 'CRUD' do
    expect(page).to have_content 'New Kudo'
    click_link 'New Kudo'
    fill_in 'Title', with: 'Title is here'
    fill_in 'Content', with: 'Content is here'
    expect(page).to have_content 'Kudo was successfully created.'
    click_button 'Create Kudo'
    expect(page).to have_content 'Kudo was successfully created.'
    expect(page).to have_content 'Kudos'
    expect(page).to have_content 'Title is here'
    expect(page).to have_content 'Content is here'

    visit root_path
    expect(page).to have_content 'Edit'
    click_link 'Edit'
    fill_in 'Title', with: 'Change the Title'
    fill_in 'Content', with: 'Another kudo content will be here'
    click_button 'Update Kudo'
    expect(page).to have_content 'Change the Title'
    expect(page).to have_content 'Another kudo content will be here'

    visit root_path
    expect(page).to have_content 'Delete'
    click_link 'Delete'
    expect(page).to have_content 'Kudo was successfully destroyed'
  end
end
