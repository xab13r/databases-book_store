require_relative 'lib/book_repository'
require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store')

# Perform a SQL query on the database and get the result set.
book_repository = BookRepository.new
result = book_repository.all

# Print out each record from the result set .
result.each do |record|
  puts "#{record.id} - #{record.title} - #{record.author_name}"
end
