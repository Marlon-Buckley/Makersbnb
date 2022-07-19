feature 'Viewing all listings' do
  scenario 'User visits all_listings page' do
    visit('/all-listings')
    expect(page).to have_content "Casa Amore, Full of islanders!, 100"
  end
end