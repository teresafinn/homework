
class SimpleString
  attr_reader :data

  def initialize(the_data="")
    @data = the_data.split("")
  end

  def length
    @count = 0
    data.each do 
      @count = @count + 1
    end
    @count
  end

  def end_with?(string)
    #puts data[-4..-1].join
    data[-(string.length)..-1].join == string
  end

  def upcase
    # solution 1 - capitalize
    upcase_data = data.map { |element| element.capitalize }
    upcase_data.join

    # solution 2 - hash
    # lowercase_to_uppercase_hash = {
    #   'a' => 'A',
    #   'A' => 'A',
    #   'b' => 'B',
    #   'B' => 'B',
    #   'c' => 'C',
    #   'C' => 'C',
    #   'd' => 'D',
    #   'D' => 'D',
    #   'e' => 'E',
    #   'E' => 'E',
    #   'f' => 'F',
    #   'F' => 'F',
    #   'g' => 'G',
    #   'G' => 'G',
    #   'h' => 'H',
    #   'H' => 'H',
    #   'i' => 'I',
    #   'I' => 'I',
    #   'j' => 'J',
    #   'J' => 'J',
    #   'k' => 'K',
    #   'K' => 'K',
    #   'l' => 'L',
    #   'L' => 'L',
    #   'm' => 'M',
    #   'M' => 'M',
    #   'n' => 'N',
    #   'N' => 'N',
    #   'o' => 'O',
    #   'O' => 'O',
    #   'p' => 'P',
    #   'P' => 'P',
    #   'q' => 'Q',
    #   'Q' => 'Q',
    #   'r' => 'R',
    #   'R' => 'R',
    #   's' => 'S',
    #   'S' => 'S',
    #   't' => 'T',
    #   'T' => 'T',
    #   'u' => 'U',
    #   'U' => 'U',
    #   'v' => 'V',
    #   'V' => 'V',
    #   'w' => 'W',
    #   'W' => 'W',
    #   'x' => 'X',
    #   'X' => 'X',
    #   'y' => 'Y',
    #   'Y' => 'Y',
    #   'z' => 'Z',
    #   'Z' => 'Z',
    #   '' => ''
    # }

    # upcase_data = data.map { |element| lowercase_to_uppercase_hash[element] }
    # upcase_data.join
    
    # solution 3 - encoding numbers
  end

  def +(input)
    # puts data.join 
    # puts input.data.join
    "#{data.join}#{input.data.join}"
  end
  
end

# a_string = SimpleString.new("hello")
puts a_string.length         # => 5
second_string = SimpleString.new("")
puts second_string.length    # => 0

# end_with?
a_string = SimpleString.new("hello")
puts a_string.end_with?("o")      # => true
puts a_string.end_with?("x")      # => false
puts a_string.end_with?("ello")   # => true

# upcase
a_string = SimpleString.new("hello")
puts a_string.upcase         # => "HELLO"
second_string = SimpleString.new("BYE")
puts second_string.upcase    # => "BYE"
third_string = SimpleString.new("")
puts third_string.upcase     # => ""

# + operator
a_string = SimpleString.new("hello")
second_string = SimpleString.new("BYE")
puts a_string + second_string   # => "helloBYE"


