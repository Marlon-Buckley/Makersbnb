require 'PG'


class Listing

  attr_reader :name, :price, :description #we may want to add ID here later one

  def initialize(name:, price:, description:)
    @name = name
    @price = price
    @description = description
  end
end
