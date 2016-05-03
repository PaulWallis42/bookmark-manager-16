require 'spec_helper'

feature 'Creating Links' do

  scenario 'I can create new links' do
    visit '/links/new'

    fill_in :title, with: 'Google'
    fill_in :url, with: 'www.google.com'
    click_button 'Create Link'

      within 'ul#links' do
        expect(page).to have_content('Google')
      end
  end
end
