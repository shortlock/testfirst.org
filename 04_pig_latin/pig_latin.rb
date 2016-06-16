def translate word

words = word.split(" ")
pig_latin = ''

	words.each do |a|
		translate_each_word(a)
		pig_latin += " " + translate_each_word(a)
	end
	pig_latin[0] = ''
	return pig_latin
end

def translate_each_word one
	vowels = ["a","e","i","o","u"]
	words2 = one.split(//)
	pig_latin1 = ''

	loop  do 
		if !vowels.include?(words2[0]) #|| word2[one.length] == 'q'
			words2 << words2.shift
		elsif  words2[0] == 'u' && words2[one.length-1] == 'q'
			words2 << words2.shift
		else
			break
		end
	end	

	pig_latin1 = words2.join
	pig_latin1 << "ay"
	return pig_latin1#.capitalize
end

puts translate('Quoci suat')