require './lib/book'
require 'pry'
class Author

  attr_reader :author_data,
              :books

  def initialize(author_data)
    @author_data = {
                    first_name: author_data[:first_name],
                    last_name: author_data[:last_name]
                    }
    @books = []
  end

  def add_book(title, publication_date)
    book_data = {}
    book_data[:author_first_name] = author_data[:first_name]
    book_data[:author_last_name] = author_data[:last_name]
    book_data[:title] = title
    book_data[:publication_date] = publication_date
    @books << Book.new(book_data)
  end
end
