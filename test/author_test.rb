require './test/test_helper'
require './lib/author'
require './lib/book'
require 'pry'

class AuthorTest < Minitest::Test
  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})

    @book = Book.new({author_first_name: "Charlotte",
                      author_last_name: "Bronte",
                      title: "Jane Eyre",
                      publication_date: "October 16,1847"
                      })
  end

  def test_it_exists
    assert_instance_of Author, @charlotte_bronte
  end

  def test_it_has_attributes
    assert_equal "Charlotte", @charlotte_bronte.author_data[:first_name]
    assert_equal "Bronte", @charlotte_bronte.author_data[:last_name]
  end

  def test_it_can_add_a_book
    expected = @charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal @charlotte_bronte.books, expected
  end

  def test_it_can_store_added_book
    @charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal 1, @charlotte_bronte.books.count
  end

  def test_it_can_add_a_new_book
    assert_equal @charlotte_bronte.books, @charlotte_bronte.add_book("Villette", "1853")
  end

  def test_it_has_more_than_one_book_stored_in_books
    @charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    @charlotte_bronte.add_book("Villette", "1853")
    assert_equal 2, @charlotte_bronte.books.count
  end

end
