class Chisel

  def initialize
    @starting_array = []
    @output_array = []
  end

  def parse(input)
    if validate_string(input) == true
      @starting_array = separate(input)
      convert(@starting_array)
      output(@output_array)
    else 
      puts "I'm sorry, your document does not meet the specifications!"
    end




  end

  def validate_string(input)
    if input.class == String 
      true
    else
      false
    end
  end

  def separate(input)
    input.split("\n\n")
  end

  def p_output(input)
    "<p>#{input}</p>"
  end

  def h1_output(input)
    "<h1>#{input[2..-1]}</h1>"
  end

  def h2_output(input)
    "<h2>#{input[3..-1]}</h2>"
  end

  def h3_output(input)
    "<h3>#{input[4..-1]}</h3>"
  end

  def h4_output(input)
    "<h4>#{input[5..-1]}</h4>"
  end

  def h5_output(input)
    "<h5>#{input[6..-1]}</h5>"
  end

  def classify(input)
    case 
    when input.start_with?("# ") 
      h1_output(input)
    when input.start_with?("## ") 
      h2_output(input) 
    when input.start_with?("### ") 
      h3_output(input)
    when input.start_with?("#### ") 
      h4_output(input)
    when input.start_with?("##### ") 
      h5_output(input)  
    else 
      p_output(input)
    end
  end

  def convert(input)
    input.each do |element|
      @output_array << classify(element)
    end
    @output_array
  end

  def output(converted_array)
    converted_array.each do |element|
      puts element
    end
  end

end

document = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'
parser = Chisel.new
output = parser.parse(document)
puts output
