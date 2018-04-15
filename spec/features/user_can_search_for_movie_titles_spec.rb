require 'rails_helper'

# As a user
# When I visit '/'
# And I fill the search box with 'Iron Man' and click 'search'
# Then my current path should be /search
# and I should see all movies related to Iron man

describe 'user can search by movie titles' do
  VCR.use_cassette('feature/user_can_search_for_movies') do
    it 'should see movie titles' do
      visit root_path
      fill_in 'Enter Movie Titles', with: 'Iron man'

      click_on 'Search'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('Iron Man')
      expect(page).to have_content('Iron Man 2')
      expect(page).to have_content('Iron Man 3')
    end
  end
end