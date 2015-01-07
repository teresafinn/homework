card_number = "4024007136512380"

#valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"

# solution 1: 
# goal: validate a credit card number, I'll know when problem solved when i am able to validate a credit card.
# trivial case: i have no idea. 

# 1. start on the right side of the credit card number and pull out every second number 
# 2. multiply every second number by 2
# 3. if the product is greater than 10, sum the digits (summed digits over 10)
# 4. add all digits (results summed)
# 5. divide sum by 10
# 6. if remainder is 0, valid. else invalid.


length = card_number.length
n1 = card_number[14]
n2 = card_number[12]
n3 = card_number[10]
n4 = card_number[8]
n5 = card_number[6]
n6 = card_number[4]
n7 = card_number[2]
n8 = card_number[0]

split_n1 = n1.to_i * 2
split_n2 = n2.to_i * 2
split_n3 = n3.to_i  * 2
split_n4 = n4.to_i  * 2
split_n5 = n5.to_i  * 2
split_n6 = n6.to_i  * 2
split_n7 = n7.to_i  * 2
split_n8 = n8.to_i  * 2

if split_n1 > 9
 	a1 = split_n1.to_s
 	b1 = a1.split('')
 	split_n1 = a1[0].to_i+a1[1].to_i
end

if split_n2 > 9
 	a2 = split_n2.to_s
 	b2 = a2.split('')
 	split_n2 = b2[0].to_i+b2[1].to_i
end

if split_n3 > 9
 	a3 = split_n3.to_s
 	b3 = a3.split('')
 	split_n3 = b3[0].to_i+b3[1].to_i
end

if split_n4 > 9
 	a4 = split_n4.to_s
 	b4 = a4.split('')
 	split_n4 = b4[0].to_i + b4[1].to_i
end

if split_n5 > 9
 	a5 = split_n5.to_s
 	b5 = a5.split('')
 	sum_b5 = b5[0].to_i + b5[1].to_i
end

if split_n6 > 9
 	a6 = split_n6.to_s
 	b6 = a6.split('')
 	split_n6 = b6[0].to_i + b6[1].to_i
end

if split_n7 > 9
 	a7 = split_n7.to_s
 	b7 = a7.split('')
 	split_n7 = b7[0].to_i + b7[1].to_i
end

if split_n8 > 9
 	a8 = split_n8.to_s
 	b8 = a8.split('')
 	split_n8 = b8[0].to_i + b8[1].to_i
end

puts card_number[15].to_i + split_n1 + card_number[13].to_i + split_n2 + card_number[11].to_i + split_n3 + card_number[9].to_i + split_n4 + card_number[7].to_i + split_n5 + card_number[5].to_i + split_n6 + card_number[3].to_i + split_n7 + card_number[1].to_i + split_n8

# sum_digits = card_number[15].to_i + split_n1 + card_number[13].to_i + split_n2 + card_number[11].to_i + split_n3 + card_number[9].to_i + split_n4 + card_number[7].to_i + split_n5 + card_number[5].to_i + split_n6 + card_number[3].to_i + split_n7 + card_number[1].to_i + split_n8


# if sum_digits % 10 == 0
# 	puts "The number is valid!"
# else 
# 	puts "The number is invalid!"
# end






