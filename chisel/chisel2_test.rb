gem 'minitest'
require 'minitest/autorun'
# require 'minitest/pride'
require './chisel2.rb'

class ChiselTest < Minitest::Test
  
  def setup
    @chisel = Chisel.new
  end

  def test_chisel_class_exists
    assert_equal Chisel, @chisel.class
  end

  def test_validate_input_is_a_string
    input = "a"
    assert_equal true, @chisel.validate_string(input)

    input = 1
    assert_equal false, @chisel.validate_string(input)

    input = "John Jacob Jingleheimer Smith"
    assert_equal true, @chisel.validate_string(input)

    input = nil
    assert_equal false, @chisel.validate_string(input)
  end

  def test_input_is_separated_on_line_breaks
    input = "John Jacob\n\nJingleheimer Smith"
    assert_equal ["John Jacob", "Jingleheimer Smith"], @chisel.separate(input)

    input = "John\n\nJacob\n\nJingleheimer\n\nSmith"
    assert_equal 4, @chisel.separate(input).count
  end

  def test_converts_to_p_tags
    input = "John"
    assert_equal "<p>John</p>", @chisel.p_output(input)
  end

  def test_converts_to_h1_tags
    input = "# John"
    assert_equal "<h1>John</h1>", @chisel.h1_output(input)

    input = "# John Jacob"
    assert_equal "<h1>John Jacob</h1>", @chisel.h1_output(input)
  end

  def test_converts_to_h2_tags
    input = "## John"
    assert_equal "<h2>John</h2>", @chisel.h2_output(input)

    input = "## John Jacob"
    assert_equal "<h2>John Jacob</h2>", @chisel.h2_output(input)
  end

  def test_converts_to_h3_tags
    input = "### John"
    assert_equal "<h3>John</h3>", @chisel.h3_output(input)

    input = "### John Jacob"
    assert_equal "<h3>John Jacob</h3>", @chisel.h3_output(input)
  end

  def test_converts_to_h4_tags
    input = "#### John"
    assert_equal "<h4>John</h4>", @chisel.h4_output(input)

    input = "#### John Jacob"
    assert_equal "<h4>John Jacob</h4>", @chisel.h4_output(input)
  end

  def test_converts_to_h5_tags
    input = "##### John"
    assert_equal "<h5>John</h5>", @chisel.h5_output(input)

    input = "##### John Jacob"
    assert_equal "<h5>John Jacob</h5>", @chisel.h5_output(input)
  end

  def test_it_correctly_classifies
    input = "John"
    assert_equal "<p>John</p>", @chisel.classify(input)

    input = "# John Jacob"
    assert_equal "<h1>John Jacob</h1>", @chisel.classify(input)

    input = "#### John Jacob\n\nJingleheimer Smith"
    assert_equal "<h4>John Jacob\n\nJingleheimer Smith</h4>", @chisel.classify(input)
  end

  def test_it_converts
    input = ["# John Jacob Jingleheimer Smith,", "Thats my name too."]
    assert_equal ["<h1>John Jacob Jingleheimer Smith,</h1>", "<p>Thats my name too.</p>"], @chisel.convert(input)
  end

  def test_it_finally_parses

  end

end


