feature 'Viewing all listings' do
  scenario 'User visits all_listings page' do
    visit('/all-listings')
    expect(page).to have_content "Name: Casa Amore Description: Full of islanders! Price Per Night: 100"
    expect(page).to have_content "Name: Phantom Manor Description: Full of islanders! Price Per Night: 100"
    expect(page).to have_content "Name: House of pain Description: Full of islanders! Price Per Night: 100"
  end
end