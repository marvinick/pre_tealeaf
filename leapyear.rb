puts 'Choose a starting year (4 digits) :'
  starting = gets.chomp.to_i
  puts 'Now choose an ending year:'
  ending   = gets.chomp.to_i
  puts 'Check it out... these years are leap years:'
  year = starting

while year <= ending 
	if year%4 == 0
		if year%100 != 0 || year%400 == 0 
		puts year
		end 
	end
	year = year + 1
end