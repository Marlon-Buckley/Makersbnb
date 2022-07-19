require 'View_listings.rb'

RSpec.describe View_listings do
  context ".all method" do
    it "returns all listings" do
      listings = View_listings.all
      expect(listings).to eq "Casa Amore, Full of islanders!, 100"
    end
  end
end
