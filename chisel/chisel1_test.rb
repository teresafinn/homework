gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './chisel1.rb'

class ChiselTest < Minitest::Test
  def test_it_exists
    assert Chisel
  end

  def test_it_wraps_text_in_p_tags
    string = 'hello'

    parser = Chisel.new(string)
    parsed_text = parser.parse

    expected_string = <<-EOS
    <p>
      hello
    </p>
    EOS

    assert_equal expected_string, parsed_text
  end

  def test_it_recognizes_hashtags
    skip
    test_text = "hi"

    puts test_text



    text.parse

  end
end