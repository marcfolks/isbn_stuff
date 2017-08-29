require"minitest/autorun"
require_relative "isbnfunction.rb"
class Testisbn < Minitest::Test

    def test_isbn_number_digits
        isbn_num="0471958697"
        assert_equal(true,isbn_length(isbn_num))
    end
    def test_isbn_wrong_number_digits
        isbn_num="047195897"
        assert_equal(false,isbn_length(isbn_num))
    end
    def test_isbn_dashes
        isbn_num="047-195-86-97"
        assert_equal("0471958697",isbn_remove(isbn_num))
    end
end
