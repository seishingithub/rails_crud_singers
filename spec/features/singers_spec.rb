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

  scenario "User can edit and update list of singers" do
    visit '/'
    click_on 'Add a singer'
    fill_in 'Name', with: 'Michael Jackson'
    fill_in 'Song', with: 'Beat It'
    click_on 'Add singer'
    click_on 'Michael Jackson'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'Beat It'
    click_on 'Edit singer'
    fill_in 'Name', with: 'The Beatles'
    fill_in 'Song', with: 'Let It Be'
    expect(page).to have_no_content 'Michael Jackson'
    expect(page).to have_no_content 'Beat It'
    click_on 'Update singer'
    expect(page).to have_content 'The Beatles'
    expect(page).to have_content 'Let It Be'

  end
end