beer_bottles = 99 
beer_bottles_now = beer_bottles 

while beer_bottles_now > 2 
	puts beer_bottles_now.to_s + ' bottles of beer on the wall, ' + 
	     beer_bottles_now.to_s + ' bottles of beer!'
		 beer_bottles_now = beer_bottles_now - 1 

puts 'Take one down, pass it around' +
	beer_bottles_now.to_s + ' bottles of beer on the wall'
end 

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"