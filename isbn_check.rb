def isbn_input(isbn)
	alpha1 = ('A'..'W').to_a
	alpha2 = ('Y'..'w').to_a
	alpha3 = ('y'..'z').to_a
	char1 = ('!'..',').to_a
	char2 = ('.'..'/').to_a
	char3 = (':'..'?').to_a
	invalid_char = alpha1 + alpha2 + alpha3 + char1 + char2 + char3
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
	count
	isbn.each { |char| ["x", "X"].each { |x|
						if char == x
							count2 +=1
						end		
						} 
	}
	if count >= 1 || count2 > 1
		isbn = false
	end
	# if isbn[0] == "x" 	
	unless isbn == false
	isbn = isbn.join
	end
	isbn
end

def isbn10_check()
	isbn10
end

def isbn13_check()
	isbn13
end	
