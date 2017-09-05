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
    # def test_isbn_13
    #     isbn_num="0471958697123"
    #     assert_equal(true,isbn_length13(isbn_num))
    #end
    # def test_isbn_x
    #     isbn_num="047195869x"
    #     assert_equal(true,letter_check(isbn_num))
    # end
    # def test_isbn_special_symbol
    #     isbn_num=" 053849781x"
    #     assert_equal("valid",isbn_x_detect(isbn_num))
    # end
def test_isbn_L
         isbn_num="047195867l"
         assert_equal("invalid",isbn_x_detect(isbn_num))
     end


    def test_isbn_L
         isbn_num="047195867x"
         assert_equal(["04719586710"],isbn_x_detect(isbn_num))
     end
#     def test_13isbn_letter
#         isbn_num="03495812323x"
#      #   assert_equal(true,letter_check(isbn_num))
#     #end
#    # def test_13isbn_character
#         isbn_num="03495812323@"
#         assert_equal(false,letter_check(isbn_num))
#         end

end 
