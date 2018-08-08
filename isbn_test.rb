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
	def test_that_isbn_false_if_invalidchar_included
		isbn = "45 1213 23*"
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_isbn_false_if_include_all_letters
		isbn = "abscdelkjl"
		assert_equal(false, isbn_input(isbn))
	end
	# def test_that_can_remove_spaces
	# 	isbn = " 56 12 45 8 7 9 4 x w o"
	# 	assert_equal("5612458794xwo", isbn_input(isbn))
	# end 
	# def test_that_can_remove_hyphens
	# 	isbn = "    -----5"
	# 	assert_equal("5", isbn_input(isbn))
	# end
	# def test_that_if_x_is_included_and_count2_works
	# 	isbn = "x X X 4564654---enrrt,mnx"
	# 	assert_equal(4, isbn_input(isbn))
	# end
	def test_that_if_statement_works_for_10_digit_isbn_with_x
		isbn = "123456789X"
		assert_equal("123456789x", isbn_input(isbn))
	end
	def test_that_an_x_anywhere_but_the_begining_fails
		isbn = "123x456789"
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_having_an_x_in_isbn13_fails
		isbn = "123456789012x"
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_isbn_with_13_numbers_passes_all_numbers
		isbn = "1234567890123"
		assert_equal("1234567890123", isbn_input(isbn))
	end	
	# def test_that_isbn10_returns_an_array
	# 	isbn10 = "123456789x"
	# 	assert_equal(Array, isbn10_check(isbn10).class)
	# end
	# def test_that_isbn10_returns_an_array_of_10_elements
	# 	isbn10 = "123456789x"
	# 	assert_equal(10, isbn10_check(isbn10).count)
	# end
	def test_that_can_take_check_digit
		isbn10 = "123456789x"
		assert_equal("123456789", isbn10_check(isbn10))
	end
end

