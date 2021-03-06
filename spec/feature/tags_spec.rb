require 'spec_helper'

feature 'Creating Tags' do

  scenario 'I can add a single tag to a link' do
    visit '/links/new'
    fill_in :title, with: 'Makers Academy'
    fill_in :url, with: 'http://www.makersacademy.com/'
    fill_in :tags, with: 'Education'
    click_button 'Create Link'

    link = Link.first
    expect(link.tags.map(&:name)).to include('Education')
  end

  
end
