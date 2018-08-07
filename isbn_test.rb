require 'minitest/autorun'
require_relative 'isbn_check.rb'
class Isbn_check_test < Minitest::Test

	def test_that_takes_input
		isbn = "2132"
		assert_equal("2132", isbn_input(isbn))
	end
	def test_that_is_a_string
		isbn = "123456"
		assert_equal(String, isbn_input(isbn).class)
	end
end