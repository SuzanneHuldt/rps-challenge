require 'spec_helper'

feature 'user -sees name in lights- upon entry' do
  scenario 'when user signs in' do
    sign_in_and_play
    expect(page).to have_content 'welcome suze! are you ready to play rock, paper scissors?'
  end
end
