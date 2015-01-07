# SOLUTION 1
bottles_remaining = 99
while bottles_remaining > 1
	puts "#{bottles_remaining} bottles of beer on the wall, #{bottles_remaining} bottles of beer.\n Take one down and pass it around, #{bottles_remaining - 1} bottles of beer on the wall."
	bottles_remaining -= 1
	
	if bottles_remaining == 2
		puts "#{bottles_remaining} bottles of beer on the wall, #{bottles_remaining} bottle of beer.\n Take one down and pass it around, #{bottles_remaining - 1} bottle of beer on the wall."
		bottles_remaining -= 1
	end	
	if bottles_remaining == 1
		puts "#{bottles_remaining} bottle of beer on the wall, #{bottles_remaining} bottle of beer.\n Take one down and pass it around, no more bottles of beer on the wall."
	end
end	
puts "No more bottles of beer on the wall, no more bottles of beer.\n Go to the store and buy some more, 99 bottles of beer on the wall!"


# SOLUTION 2
bobotw = "bottles of beer on the wall"
todpia = "Take one down and pass it around"

for bottles_beer in 1..100 do
	if 100-bottles_beer > 2
	puts "#{100-bottles_beer} #{bobotw}, #{100-bottles_beer} bottles of beer.\n #{todpia}, #{100-bottles_beer - 1} #{bobotw}."
end
	if 100-bottles_beer == 2 
		puts "#{100-bottles_beer} #{bobotw}, #{100-bottles_beer} bottles of beer.\n #{todpia}, #{100-bottles_beer - 1} bottle of beer on the wall."
	end
	if 100-bottles_beer == 1
		puts "#{100-bottles_beer} bottle of beer on the wall, #{100-bottles_beer} bottle of beer.\n #{todpia}, no more #{bobotw}."
	end
	if 100-bottles_beer == 0 
		puts "No more #{bobotw}, no more bottles of beer.\n Go to the store and buy some more, 99 #{bobotw}!"
	end
end