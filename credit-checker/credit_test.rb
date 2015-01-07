require 'minitest/autorun'
require './credit'

class CreditCheckTest < Minitest::Test
	def setup
    @checker = CreditCheck.new
  end

  def test_empty_string_is_invalid
    result = @checker.validate("")
    assert_equal false, result #I assert that false is equal to the result. 
  end

  def test_zero_is_valid
    result = @checker.validate("0")
    assert_equal true, result
  end

  def test_one_is_false
    result = @checker.validate("1")
    assert_equal false, result
  end

  def test_two_digits_true
    result = @checker.validate("42")
    assert_equal true, result
  end












end

