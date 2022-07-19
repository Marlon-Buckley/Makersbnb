require 'listing'

RSpec.describe Listing do
  context ".add method" do
    xit "add a listing" do
      new_listing = Listing.add(name: "Tree House", price: "3000", description: "Woody, and cosy")
      p new_listing
      database = View_listings.all
      p database
      expect(database.last.name).to eq "Tree House"
      expect(database.last).to eq new_listing
    end
  end
end

