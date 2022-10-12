# Books Model and Repository Classes Design Recipe

_Copy this recipe template to design and implement Model and Repository classes for a database table._

## 1. Design and create the Table

```
Table: books

Columns:
id | title | author_name
```

## 2. Create Test SQL seeds

```sql
TRUNCATE TABLE books RESTART IDENTITY;

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (1, 'Nineteen Eighty-Four', 'George Orwell');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (2, 'Mrs Dalloway', 'Virginia Woolf');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (3, 'Emma', 'Jane Austen');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (4, 'Dracula', 'Bram Stoker');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (5, 'The Age of Innocence', 'Edith Wharton');
```

Run this SQL file on the database to truncate (empty) the table, and insert the seed data. Be mindful of the fact any existing records in the table will be deleted.

```bash
psql -h 127.0.0.1 book_store < seeds_books.sql
```

## 3. Define the class names

Usually, the Model class name will be the capitalised table name (single instead of plural). The same name is then suffixed by `Repository` for the Repository class name.

```ruby
# Table name: books

# Model class
# (in lib/book.rb)
class Book
end

# Repository class
# (in lib/book_repository.rb)
class BookRepository
end
```

## 4. Model class

```ruby
# Table name: books

# Model class
# (in lib/book.rb)

class Book
  attr_accessor :id, :title, :author_name
end
```

## 5. Repository Class interface

```ruby
# Table name: books

# Repository class
# (in lib/book_repository.rb)

class BookRepository

  # Selecting all records
  # No arguments
  def all
    # Executes the SQL query:
    # SELECT id, title, author_name FROM books;

    # Returns an array of Book objects.
  end
end
```

## 6. Test Examples

These examples will later be encoded as RSpec tests.

```ruby
# Get all books

repo = BookRepository.new

books = repo.all

books.length # =>  5

books[0].id # =>  1
books[0].title # =>  'Nineteen Eighty-Four'
books[0].author_name # =>  'George Orwell'

books[1].id # =>  2
books[1].title # =>  'Mrs Dalloway'
books[1].author_name # =>  'Virginia Woolf'
```