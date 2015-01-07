require 'pry'

class Chisel
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def parse
    <<-EOS
    <p>
      #{string}
    </p>
    EOS
  end

end
