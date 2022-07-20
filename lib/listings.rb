require 'PG'
require_relative 'listing'


class Listings

  attr_reader :name, :price, :description, :available_from, :available_to #we may want to add ID here later one

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
      Listing.new(name: listing['name'], description: listing['description'], price: listing['price'], available_from: listing['available_from'], available_to: listing['available_to'])
    end
  end

  def self.add(name:, price:, description:, available_to:, available_from:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    
    connection.exec("INSERT INTO listings (name, description, price, available_from, available_to) VALUES ('#{name}', '#{description}', '#{price}', '#{available_from}', '#{available_to}') RETURNING name, description, price, available_from, available_to;")
  end

end