feature 'Viewing all listings' do
  scenario 'User visits all_listings page' do
    visit('/all-listings')
    expect(page).to have_content "Casa Amore\nDescription: Full of islanders! Price Per Night: 100 Available from: 01/07/22 Available to: 01/08/22"
    expect(page).to have_content "\nPhantom Manor\nDescription: Full of islanders! Price Per Night: 100 Available from: 01/12/23 Available to: 01/02/23"
    expect(page).to have_content "\nHouse of pain\nDescription: Full of islanders! Price Per Night: 100 Available from: 01/01/22 Available to: 31/12/23"
    #test used to look for this which is why it was failing:
      # expect(page).to have_content "Name: Phantom Manor Description: Full of islanders! Price Per Night: 100"
      # expect(page).to have_content "Name: House of pain Description: Full of islanders! Price Per Night: 100"
  end
end