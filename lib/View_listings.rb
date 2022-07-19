require 'PG'
require_relative 'listing'


class View_listings

  attr_reader :name, :price, :description #we may want to add ID here later one

  def initialize(name:, price:, description:)
    @name = name
    @price = price
    @description = description
  end

  
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    all_listings = connection.exec('SELECT * FROM listings;')
    all_listings.map do |listing| 
      Listing.new(name: listing['name'], description: listing['description'], price: listing['price'])
    end

  end
end