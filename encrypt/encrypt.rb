class Encrypt
  def initialize
    @encrypt_cipher = {
    "a" => "n",
    "b" => "o",
    "c" => "p",
    "d" => "q",
    "e" => "r",
    "f" => "s",
    "g" => "t",
    "h" => "u",
    "i" => "v",
    "j" => "w",
    "k" => "x",
    "l" => "y",
    "m" => "z",
    "n" => "a",
    "o" => "b",
    "p" => "c",
    "q" => "d",
    "r" => "e",
    "s" => "f",
    "t" => "g",
    "u" => "h",
    "v" => "i",
    "w" => "j",
    "x" => "k",
    "y" => "l",
    "z" => "m",
    ' ' => ' '
  }
  end

  def encrypter(message)
    #ab
    # ['a', 'b']
    # result = []
    # ENCRYPT_CIPHER['a']
    # result = ['n']
    # ENCRYPT_CIPHER['b']
    # result = ['n', 'o']
    # result = 'no'
    result = []
    message.chars.each do |char|
      result << @encrypt_cipher[char]
      if char == char.upcase && char != ' '
        result << @encrypt_cipher[char.downcase].upcase
      end
    end
    result.join('')
  end
end

# # key = 13

# message = "This is my secret"

# #need to have a method called input. what does input do? it intakes info.
# encrypt = Encrypt.new

# encrypt.encrypter(message)

# encrypt_cipher[]

# # do your encryption here

# puts encrypted_message


