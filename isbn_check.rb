def isbn_input(isbn)
	alpha1 = ('A'..'W').to_a
	alpha2 = ('Y'..'w').to_a
	alpha3 = ('y'..'z').to_a
	char1 = ('!'..',').to_a
	char2 = ('.'..'/').to_a
	char3 = (':'..'?').to_a
	invalid_char = alpha1 + alpha2 + alpha3 + char1 + char2 + char3
	count = 0
	isbn.split("").each { |x| invalid_char.each { |y|
							if x == y
								count += 1
							end
							}

	}

	count
	isbn = isbn.split("")
	isbn.delete_if {|x| x == " "}
	isbn.delete_if {|x| x == "-"}
	isbn = isbn.join
	p isbn
end

def isbn10_check()
	isbn10
end

def isbn13_check()
	isbn13
end	