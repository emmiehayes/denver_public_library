require './test/test_helper'
require './lib/author'
require './lib/book'
require 'pry'
class AuthorTest < Minitest::Test

  def test_it_exists
    author = Author.new({first_name: "Charlotte",
                         last_name: "Bronte"})
    assert_instance_of Author, author
  end

  def test_it_has_attributes
    author = Author.new({first_name: "Charlotte",
                         last_name: "Bronte"})

    assert_equal "Charlotte", author.author_data[:first_name]
    assert_equal "Bronte", author.author_data[:last_name]
  end

  def test_it_can_add_a_book
    author = Author.new({first_name: "Charlotte",
                         last_name: "Bronte"})

    book = Book.new({author_first_name: "Charlotte",
                     author_last_name: "Bronte",
                     title: "Jane Eyre",
                     publication_date: "October 16, 1847"
                    })
    assert_equal book, author.add_book("Jane Eyre", "October 16, 1847")
  end

  def test_it_can_store_added_book
    author = Author.new({first_name: "Charlotte",
                         last_name: "Bronte"})

    book = Book.new({author_first_name: "Charlotte",
                     author_last_name: "Bronte"
                    })
    author.add_book("Jane Eyre", "October 16, 1847")
    assert_equal 1, author.books.count
  end

  def test_it_can_add_a_new_book
    author = Author.new({first_name: "Charlotte",
                         last_name: "Bronte"})

    book = Book.new({author_first_name: "Charlotte",
                     author_last_name: "Bronte"
                    })
    assert_equal book, author.add_book("Villette", "1853")
  end

  def test_it_has_more_than_one_book_stored_in_books
    author = Author.new({first_name: "Charlotte",
                         last_name: "Bronte"})

      book = Book.new({author_first_name: "Charlotte",
                       author_last_name: "Bronte"
                      })
    author.add_book("Jane Eyre", "October 16, 1847")
    author.add_book("Villette", "1853")
    assert_equal 2, author.books.count
  end

end
