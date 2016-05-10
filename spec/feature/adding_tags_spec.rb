require 'spec_helper'

feature 'Adding multiple tags to a link' do

  scenario 'I can add multiple tags to a link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.makersacademy.com/'
    fill_in 'title', with: 'Makers Academy'
    fill_in 'tags', with: 'education ruby'
    click_button 'Create Link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education', 'ruby')
  end

end
