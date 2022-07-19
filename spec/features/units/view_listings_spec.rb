require 'View_listings.rb'

RSpec.describe View_listings do
  context ".all method" do
    it "returns all listings" do
      listings = View_listings.all
      expect(listings.first.name).to eq "Casa Amore"
      expect(listings.first.price).to eq "100"
      expect(listings.last.name).to eq "House of pain"
    end
  end
end

