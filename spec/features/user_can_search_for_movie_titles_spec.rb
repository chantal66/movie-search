require 'rails_helper'

# As a user
# When I visit '/'
# And I fill the search box with 'Iron Man' and click 'search'
# Then my current path should be /search
# and I should see all movies related to Iron man

describe 'user can search by movie titles' do
  it 'should see movie titles' do
    visit root_path

    fill_in 'Movie Titles', with: 'Iron man'
    click_button 'Search'

    expect(current_path).to eq(search_path)
    expect(page).to have_content('Iron man')
    expect(page).to have_content('Iron man 2')
    expect(page).to have_content('Iron man 3')
  end
end