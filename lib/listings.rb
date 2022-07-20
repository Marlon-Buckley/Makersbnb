require 'PG'
require_relative 'listing'


class Listings

  attr_reader :name, :price, :description, :daterange #we may want to add ID here later one

  # def initialize(name:, price:, description:)
  #   @name = name
  #   @price = price
  #   @description = description
  # end

  
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    all_listings = connection.exec('SELECT * FROM listings;')
    all_listings.map do |listing| 
      Listing.new(name: listing['name'], description: listing['description'], price: listing['price'], daterange: listing['daterange'])
    end
  end

  def self.add(name:, price:, description:, daterange:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    
    connection.exec("INSERT INTO listings (name, description, price, daterange) VALUES ('#{name}', '#{description}', '#{price}', '#{daterange}') RETURNING name, description, price, daterange;")
  end

end