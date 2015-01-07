class SimpleArray
  attr_reader :data

  def initialize(the_data=[])
    @data = the_data
  end

  def first
    data[0]
  end

  def last 
    data[-1]
  end

  def join(parameter=nil)
    @empty_string = ""
    data.each do |element|
      @empty_string += element + parameter.to_s
    end
    parameter.nil? ? @empty_string : @empty_string.chomp(parameter)
  end

  def count
    @count = 0
    data.each do |element|
      @count += 1
    end
    @count
  end

end



an_array = SimpleArray.new(['a', 'b', 'c'])
puts an_array.first
puts an_array.last
puts an_array.join
puts an_array.join('-')
puts an_array.count 

other_array = SimpleArray.new
puts other_array.count 