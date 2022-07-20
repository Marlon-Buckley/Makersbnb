require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("TRUNCATE listings;")
  connection.exec("INSERT INTO listings (name, description, price, daterange) VALUES ('Casa Amore', 'Full of islanders!', '100', '01/07/22 to 01/08/22');")
  connection.exec("INSERT INTO listings (name, description, price, daterange) VALUES ('Phantom Manor', 'Full of islanders!', '100', '01/12/23 to 01/02/23');")
  connection.exec("INSERT INTO listings (name, description, price, daterange) VALUES ('House of pain', 'Full of islanders!', '100', '01/01/22 to 31/12/23');")
end

=begin
def add_row_to_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("INSERT INTO listings (name, description, price) VALUES ('Casa Amore', 'Full of islanders!', '100');")
end

def add_another_row_to_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("INSERT INTO listings (name, description, price) VALUES ('Phantom Manor', 'Full of islanders!', '100');")
end

def add_third_row_to_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("INSERT INTO listings (name, description, price) VALUES ('House of pain', 'Full of islanders!', '100');")
end
=end