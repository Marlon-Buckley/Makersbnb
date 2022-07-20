feature 'Adding listing' do
  scenario 'A user adds a listing to Makersbnb' do 
       visit('/listings/add')
       fill_in('name', with: 'Tea Towel Manor')
       fill_in('description', with: 'the house of cool tea towels')
       fill_in('price', with: '10')
       click_button('Submit')
       expect(page).to have_content "Tea Towel Manor"
   end
end