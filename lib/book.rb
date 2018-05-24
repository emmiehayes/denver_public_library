class Book
  attr_reader :book_data
  def initialize(book_data)
    @book_data = {
      author_first_name: book_data[:author_first_name],
      author_last_name:  book_data[:author_last_name],
      title:             book_data[:title],
      publication_date:  book_data[:publication_date]
    }
  end
end
