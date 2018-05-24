require './test/test_helper'
require './lib/book'

class BookTest < Minitest::Test

  def setup
    @book = Book.new({author_first_name: "Harper",
                    author_last_name: "Lee",
                    title: "To Kill a Mockingbird",
                    publication_date: "July 11, 1960"
                    })
  end

  def test_it_exists
    assert_instance_of Book, @book
  end

  def test_it_has_an_author_first_name
    assert_equal "Harper", @book.book_data[:author_first_name]
  end

  def test_it_has_an_author_last_name
    assert_equal "Lee", @book.book_data[:author_last_name]
  end

  def test_it_has_a_title
    assert_equal "To Kill a Mockingbird", @book.book_data[:title]
  end

  def test_it_has_a_publication_date
    assert_equal "July 11, 1960", @book.book_data[:publication_date]
  end
end
