require"minitest/autorun"
require_relative "isbnfunction.rb"
class Testisbn < Minitest::Test

    def test_isbn_number_digits
        isbn_num="0471958697"
        assert_equal(true,isbn_length10(isbn_num))
    end
    def test_isbn_wrong_number_digits
        isbn_num="047195897"
        assert_equal(false,isbn_length10(isbn_num))
    end
    def test_isbn_dashes
        isbn_num="047-195-86-97"
        assert_equal("0471958697",isbn_remove(isbn_num))
    end
    def test_isbn_space
        isbn_num="047 195 86 97"
        assert_equal("0471958697",isbn_remove(isbn_num))
    end
    def test_isbn_13
        isbn_num="0471958697123"
        assert_equal(true,isbn_length13(isbn_num))
    end
    def test_isbn_x
        isbn_num="047195869x"
        assert_equal(true,letter_check(isbn_num))
    end
    def test_isbn_special_symbol
        isbn_num="047195867@"
        assert_equal(false,letter_check(isbn_num))
    end
    def test_isbn_L
        isbn_num="047195867L"
        assert_equal(false,letter_check(isbn_num))
    end
end 
