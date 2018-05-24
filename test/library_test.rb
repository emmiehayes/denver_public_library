require './test/test_helper'
require './lib/library'
require './lib/author'

class LibraryTest < Minitest::Test

  def setup
  @dpl = Library.new

  @char_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  @jane_eyre = @char_bronte.add_book("Jane Eyre", "October 16, 1847")
  @villette  = @char_bronte.add_book("Villette", "1853")

  @harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
  @mockingbird = @harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")
  end

  def test_it_exists
    assert_instance_of Library, @dpl
  end

  def test_it_has_attributes
    assert_equal [], @dpl.books
  end
end
