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
	# def test_that_isbn_false_if_invalidchar_included
	# 	isbn = "45 1213 23*"
	# 	assert_equal(false, isbn_input(isbn))
	# end
	# def test_that_isbn_false_if_include_all_letters
	# 	isbn = "abscdelkjl"
	# 	assert_equal(false, isbn_input(isbn))
	# end
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
	# def test_that_if_statement_works_for_10_digit_isbn_with_x
	# 	isbn = "123456789X"
	# 	assert_equal("123456789x", isbn_input(isbn))
	# end
	# def test_that_an_x_anywhere_but_the_begining_fails
	# 	isbn = "123x456789"
	# 	assert_equal(false, isbn_input(isbn))
	# end
	# def test_that_having_an_x_in_isbn13_fails
	# 	isbn = "123456789012x"
	# 	assert_equal(false, isbn_input(isbn))
	# end
	# def test_that_isbn_with_13_numbers_passes_all_numbers
	# 	isbn = "1234567890123"
	# 	assert_equal("1234567890123", isbn_input(isbn))
	# end	
	# def test_that_isbn10_returns_an_array
	# 	isbn10 = "123456789x"
	# 	assert_equal(Array, isbn10_check(isbn10).class)
	# end
	# def test_that_isbn10_returns_an_array_of_10_elements
	# 	isbn10 = "123456789x"
	# 	assert_equal(10, isbn10_check(isbn10).count)
	# end
	# def test_that_can_take_check_digit
	# 	isbn10 = "123456789x"
	# 	assert_equal("123456789", isbn10_check(isbn10))
	# end
	# def test_that_multiplying_first_digit_works
	# 	isbn10 = "123456789x"
	# 	assert_equal(1, isbn10_check(isbn10))
	# end
	# def test_that_the_sum_is_correct
	# 	isbn10 = "123456789x"
	# 	assert_equal(285, isbn10_check(isbn10))
	# end
	# def test_that_taking_the_modulo_of_the_sum_works
	# 	isbn10 = "123456789x"
	# 	assert_equal(10, isbn10_check(isbn10))
	# end
	# def test_that_isbn10_comes_back_false_if_false
	# 	isbn10 = "6666666660"
	# 	assert_equal(false, isbn10_check(isbn10))
	# end
	# def test_that_returns_true_using_x_at_the_end1
	# 	isbn10 = "123456789x"
	# 	assert_equal(true, isbn10_check(isbn10))
	# end
	# def test_that_returns_true_without_x_at_the_end1
	# 	isbn10 = "6666666666"
	# 	assert_equal(true, isbn10_check(isbn10))
	# end
	# def test_that_isbn13_returns_an_array
	# 	isbn13 = "1234567890123"
	# 	assert_equal(Array, isbn13_check(isbn13).class)
	# end
	# def test_that_isbn13_returns_an_array_of_13_elements
	# 	isbn13 = "1234567890123"
	# 	assert_equal(13, isbn13_check(isbn13).count)
	# end
	# def test_that_check_digit_13_is_correct
	# 	isbn13 = "1234567890123"
	# 	assert_equal(3, isbn13_check(isbn13))
	# end
	# def test_that_sum13_works_correctly
	# 	isbn13 = "1234567890123"
	# 	assert_equal(104, isbn13_check(isbn13))
	# end
	# def test_that_modulo_returns
	# 	isbn13 = "1234567890123"
	# 	assert_equal(4, isbn13_check(isbn13))
	# end
	# def test_that_subtracting_the_modulo_returns_correctly
	# 	isbn13 = "1234567890128"
	# 	assert_equal(8, isbn13_check(isbn13))
	# end
	# def test_that_subtracting_the_modulo_returns_correctly1
	# 	isbn13 = "9780470059029"
	# 	assert_equal(9, isbn13_check(isbn13))
	# end
	# def test_that_isbn_can_down_case_number
	# 	isbn = "1234567890"
	# 	assert_equal("1234567890", isbn_input(isbn))
	# end
	# def test_that_returns_false_if_only_spaces_entered
	# 	isbn = "    "
	# 	assert_equal(false, isbn_input(isbn))
	# end
	# def test_that_returns_false_if_nothing_entered
	# 	isbn = ""
	# 	assert_equal(false, isbn_input(isbn))
	# end
	def test_that_returns_true_if_isbn10_is_true3
		isbn = "123456789x"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_true_if_isbn13_is_true3
		isbn = "9780470059029"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_true_if_isbn13_is_true4
		isbn = "978-0-13-149505-0"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_true_if_isbn13_is_true5
		isbn = "978 0 471 48648 0"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_true_if_isbn10_is_true4
		isbn = "0471958697"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_true_if_isbn10_is_true5
		isbn = "0-321-14653-0"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_true_if_isbn10_is_true6
		isbn = "877195869x"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_true_if_isbn10_is_true7
		isbn = "877195869X"
		assert_equal(true, isbn_input(isbn))
	end
	def test_that_returns_false_if_invalid4
		isbn = "4780470059029"
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_returns_false_if_invalid5
		isbn = "0-321@14653-0"
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_returns_false_if_invalid6
		isbn = "877195x869"
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_returns_false_if_invalid7
		isbn = " "
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_returns_false_if_invalid8
		isbn = ""
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_returns_false_if_invalid9
		isbn = "-"
		assert_equal(false, isbn_input(isbn))
	end
	def test_that_nil_returns_false
		isbn = nil
		assert_equal(false, isbn_input(isbn))
	end
end

