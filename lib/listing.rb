require 'PG'


class Listing

  attr_reader :name, :price, :description, :daterange #we may want to add ID here later one

  def initialize(name:, price:, description:, daterange:)
    @name = name
    @price = price
    @description = description
    @daterange = daterange
  end

end
