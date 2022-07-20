feature 'Adding listing' do
  scenario 'A user adds a listing to Makersbnb' do 
    visit('/add')
    fill_in('name', with: 'Tea Towel Manor')
    fill_in('description', with: 'Lots of lovely cool tea towels')
    fill_in('price', with: '100')
    click_button('Submit')
    expect(page).to have_content "Tea Towel Manor"
    expect(page).to have_content "Lots of lovely cool tea towels"
    expect(page).to have_content "100"
  end
end