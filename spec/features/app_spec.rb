require "spec_helper"

feature "Homepage" do
  scenario "check homepage" do
    visit "/"
    expect(page).to have_content("Contacts")
    click_link "Login"
  end
end

feature "Login" do
  scenario "input data into fields" do
    visit "/"
    expect(page).to have_content("Login")
    fill_in 'name', with: 'Lindsay'
    fill_in 'password', with: '12345Abc'
    click_button 'submit'

  end
  end