require 'minitest/autorun'
require './encrypt'

class EncryptTest < Minitest::Test
  # def initialize(input)
  #   @input
  # end

  def test_it_can_encrypt_a_letter
    message = "a"
    encrypt = Encrypt.new
    assert_equal 'n', encrypt.encrypter(message)
  end

  def test_it_can_encrypt_multi_character_message
    message = "ab"
    encrypt = Encrypt.new
    assert_equal 'no', encrypt.encrypter(message)
  end

  def test_it_can_deal_with_spaces
    message = "a b"
    encrypt = Encrypt.new
    assert_equal 'n o', encrypt.encrypter(message)
  end

  def test_it_can_encrypt_a_message
    message = "This is my secret"
    encrypt = Encrypt.new
    assert_equal "Guvf vf zl frperg", encrypt.encrypter(message)
  end
end

#I want my program to say: if you get an "a" output an "n"

# (input) *lookforkey,findkey,translate (output)

