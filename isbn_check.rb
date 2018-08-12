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
	if isbn == false
		isbn = "Invalid ISBN"
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
	num_check = 1
	sum10 = 0
	isbn10.each { |num|
					sum10 += num.to_i * num_check
					num_check += 1
	}
	mod10 = sum10 % 11
		if mod10 == check_digit10
			isbn10 = "Valid ISBN-10"
		else 
			isbn10 = false
		end
	isbn10
end
def isbn13_check(isbn13)
	isbn13 = isbn13.split('')
	check_digit13 = isbn13.pop.to_i
		if check_digit13 == 0
			check_digit13 = 10
		end
	sum13 = 0
	isbn13.each_with_index { |numb, ind| 
							if ind.to_i.even? == true
								sum13 += numb.to_i * 1
							else
								sum13 += numb.to_i * 3 
							end		
	}
	mod13 = sum13 % 10
	mod13 = 10 - mod13
		if check_digit13 == mod13
			isbn13 = "Valid ISBN-13"
		else	
			isbn13 = false
		end
	isbn13		
end
def csv_input(isbn_csv)
isbn_arr2 = []		
isbn_arr = []
filename = isbn_csv
file = File.new(filename)
file.each_line("\n") do |row|
  columns = row.split(",")
  	if columns[1].split('').last == "\n"
  		columns[1] = columns[1].split('')
  		columns[1].pop
  		columns[1] = columns[1].join
  	end
  isbn_arr.push(columns)
  end
  isbn_arr.each do |elements|
  	answers = isbn_input(elements[1])
  	answers = elements.push(answers) 
  	isbn_arr2.push(answers)
  end
  isbn_arr2[0].pop
  isbn_arr2
end