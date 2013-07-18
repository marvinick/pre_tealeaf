puts 'Typed in few words and let me sort them:'
  words = []

	while true
	word = gets.chomp if word == ''
	break 
	end
    words.push word
	end
  	puts 'ANd they are sorted:'
  	puts words.sort
 