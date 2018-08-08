require 'minitest/autorun'
require_relative 'isbn_check.rb'
class Isbn_check_test < Minitest::Test

	# def test_that_takes_input
	# 	isbn = "2132"
	# 	assert_equal("2132", isbn_input(isbn))
	# end
	# def test_that_is_a_string
	# 	isbn = "123456"
	# 	assert_equal(String, isbn_input(isbn).class)
	# end
	# def test_that_ivalid_char_count_works
	# 	isbn = "xkue123_-  .,45X"
	# 	assert_equal(6, isbn_input(isbn))
	# end
	def test_that_can_remove_spaces
		isbn = " 56 12 45 8 7 9 4 x w o"
		assert_equal("5612458794xwo", isbn_input(isbn))
	end 
	def test_that_can_remove_hyphens
		isbn = "    -----5"
		assert_equal("5",isbn_input(isbn))
	end	
end
