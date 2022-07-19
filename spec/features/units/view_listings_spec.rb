require 'listings.rb'

RSpec.describe Listings do
  context ".all method" do
    it "returns all listings" do
      test_listings = Listings.all
      expect(test_listings.first.name).to eq "Casa Amore"
      expect(test_listings.first.price).to eq "100"
      expect(test_listings.last.name).to eq "House of pain"
    end
  end
end

