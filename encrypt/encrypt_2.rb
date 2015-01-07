
def translate(message)
key = {
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


    split_input = message.split("")
    split_input[0] = key[split_input[0]]

end

#how do I access t? must create a method.


translate("this is my secret")
