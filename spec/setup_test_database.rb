require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("TRUNCATE listings;")
end

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