def invalid_char()
	alpha1 = ('A'..'W').to_a
	alpha2 = ('Y'..'w').to_a
	alpha3 = ('y'..'z').to_a
	char1 = ('!'..',').to_a
	char2 = ('.'..'/').to_a
	char3 = (':'..'?').to_a
	invalid_char = alpha1 + alpha2 + alpha3 + char1 + char2 + char3
end
def isbn_input(isbn)
	if isbn == nil
		isbn = false
	else	
		count = 0
		count2 = 0
		isbn = isbn.split("")
		isbn.delete_if {|num| num == " "}
		isbn.delete_if {|num| num == "-"}
		isbn.each { |char| invalid_char.each { |invchar|
							if char == invchar
								count += 1
							end
							}
		}
		isbn.each { |char| ["x", "X"].each { |x|
							if char == x
								count2 +=1
							end		
							} 
		}
			if count >= 1 || count2 > 1
				isbn = false
			elsif isbn.count != 10 && isbn.count != 13
				isbn = false
			elsif isbn.count == 13 && count2 > 0
				isbn = false
			elsif isbn.last.downcase != "x" && isbn.include?("x") == true
				isbn = false
			else
				isbn[-1] = isbn[-1].downcase 	
				isbn 
			end
		unless isbn == false
			if isbn.count == 10
				isbn10 = isbn.join
				isbn = isbn10_check(isbn10)
			else
				isbn13 = isbn.join
				isbn = isbn13_check(isbn13)
			end
		end
	end				
	isbn
end
def isbn10_check(isbn10)
	isbn10 = isbn10.split('')
	check_digit10 = isbn10.pop
		if check_digit10 == "x"
			check_digit10 = 10
		else
			check_digit10 = check_digit10.to_i
		end
	num1 = isbn10[0].to_i * 1
	num2 = isbn10[1].to_i * 2
	num3 = isbn10[2].to_i * 3
	num4 = isbn10[3].to_i * 4
	num5 = isbn10[4].to_i * 5
	num6 = isbn10[5].to_i * 6
	num7 = isbn10[6].to_i * 7
	num8 = isbn10[7].to_i * 8
	num9 = isbn10[8].to_i * 9
	sum10 = num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8 + num9 
	mod10 = sum10 % 11
		if mod10 == check_digit10
			isbn10 = true
		else 
			isbn10 = false
		end
	isbn10
end
def isbn13_check(isbn13)
	isbn13 = isbn13.split('')
	check_digit13 = isbn13[-1].to_i
	numb1 = isbn13[0].to_i * 1
	numb2 = isbn13[1].to_i * 3
	numb3 = isbn13[2].to_i * 1
	numb4 = isbn13[3].to_i * 3
	numb5 = isbn13[4].to_i * 1
	numb6 = isbn13[5].to_i * 3
	numb7 = isbn13[6].to_i * 1
	numb8 = isbn13[7].to_i * 3
	numb9 = isbn13[8].to_i * 1
	numb10 = isbn13[9].to_i * 3
	numb11 = isbn13[10].to_i * 1
	numb12 = isbn13[11].to_i * 3
	sum13 = numb1 + numb2 + numb3 + numb4 + numb5 + numb6 + numb7 + numb8 + numb9 + numb10 + numb11 + numb12
	mod13 = sum13 % 10
	mod13 = 10 - mod13
		if mod13 == 10
			mod13 = 0
		end
		if check_digit13 == mod13
			isbn13 = true
		else	
			isbn13 = false
		end
	isbn13		
end