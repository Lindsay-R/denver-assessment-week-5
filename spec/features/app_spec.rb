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
    click_link "Login"
    expect(page).to have_content("Login")
    fill_in 'name', with: 'Lindsay'
    fill_in 'password', with: '12345Abc'
    click_button 'submit'

  end
end

feature "customized homepage" do
  scenario "see contacts list" do
    visit "/"
    click_link "Login"
    expect(page).to have_content("Login")
    fill_in 'name', with: 'jetaggart'
    fill_in 'password', with: 'password'
    click_button 'submit'

    expect(page).to have_content("Homepage")
    expect(page).to have_content("Contacts")
    expect(page).to have_content("Spencer", "Jeff", "Bob")
    expect(page).to have_content("spencer@example.com", "jetaggart@example.com", "spencer@example.com")
  end
end