require 'PG'


class Listing

  attr_reader :name, :price, :description, :available_to, :available_from #we may want to add ID here later one

  def initialize(name:, price:, description:, available_to:, available_from:)
    @name = name
    @price = price
    @description = description
    @available_from = available_from
    @available_to = available_to
  end

end
