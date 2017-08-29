require"minitest/autorun"
require_relative "isbnfunction.rb"
class Testisbn < Minitest::Test

def test_isbn_number_digits
    isbn_num="0471958697"
    assert_equal(true,isbn_length(isbn_num))
end
end
#def test_fist_number_multiplied_by_

