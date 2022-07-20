require 'listing'
require 'PG'
require 'pp'

RSpec.describe Listing do
  context ".add method" do
    it "add a listing" do
      new_listing = Listings.add(name: "Tree House", description: "leafy and green", price: "500", available_from: "01/01/22", available_to: "01/03/22")
      database = Listings.all
      expect(database.last.name).to eq "Tree House"
      expect(database.last.description).to eq "leafy and green"
      expect(database.last.price).to eq "500"
      expect(database.last.available_from).to eq "01/01/22"
      expect(database.last.available_to).to eq "01/03/22"
    end
  end
end



