card_number = "4929735477250543"

valid = false

card_length = card_number.length

number_of_multipliers = card_length / 2

sum = 0

for number in (1..number_of_multipliers)
  position = number * -2
  value = card_number[position].to_i * 2
  if value > 9
    value = value.to_s
    value = value[0].to_i + value[1].to_i
  end
  card_number[position] = value.to_s
end

for number in (0..card_length-1)
  sum += card_number[number].to_i
end

remainder = sum % 10

if remainder == 0
  puts "VALID!"
else
  puts "NOT VALID!"
end