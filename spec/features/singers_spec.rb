require 'spec_helper'

feature 'Manage Singers' do
  scenario "User can create and view list of singers" do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a singer'
    fill_in 'Name', with: 'Michael Jackson'
    fill_in 'Song', with: 'Beat It'
    click_on 'Add singer'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'Beat It'
  end
end