def roman(x)
	number = x.to_s.split(//)
	tenths(number[0].to_i * 10) + roman_one_to_nine(number[1].to_i)
end

def tenths(x)
	if x == 10
		return "X"
	end

	if x <= 30 && x % 10 == 0
		return "X" * (x / 10)
	end

	if x == 40 
		return "X" + "L"
	elsif x == 50
		return "L"
	end
end

def roman_one_to_nine(x)
	if x == 5
		return "V"
	end

	if x >= 1 && x <= 3
		return "I" * x	
	end

	if x == 4
		return "I" + "V"
	elsif x == 9 
		return "I" + "X"
	end

	if x >= 6 && x <= 8
		return "V" + "I" * (x - 5)
	end

end

puts roman(49)

# puts roman_one_to_nine(1)
# puts roman_one_to_nine(2)
# puts roman_one_to_nine(3)
# puts roman_one_to_nine(4)
# puts roman_one_to_nine(5)
# puts roman_one_to_nine(6)
# puts roman_one_to_nine(7)
# puts roman_one_to_nine(8)
# puts roman_one_to_nine(9)
# puts tenths(10)
# puts tenths(20)
# puts tenths(30)
# puts tenths(40)
# puts tenths(50)