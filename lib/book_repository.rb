require_relative './book'

class BookRepository
  def all
    sql_query = 'SELECT * FROM books;'
    result_set = DatabaseConnection.exec_params(sql_query, [])

    books = []

    result_set.each do |record|
      book = Book.new
      book.id = record['id']
      book.title = record['title']
      book.author_name = record['author_name']
      books.push(book)
    end
    books
  end
end
