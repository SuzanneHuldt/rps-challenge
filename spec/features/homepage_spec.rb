require 'spec_helper'

feature 'welcome and enter name' do
  scenario 'when user lands on root' do
    visit('/')
    expect(page).to have_content 'hi there! please enter your name'
  end
end
