def translate word


vowels = ["a","e","i","o","u"]
words = word.split(/ /)
pig_latin = ''


def translate_each_word
	i = 0

		while i < 4  do 
			if !vowels.include?(words[i])
				words << words.shift
			else
				break
			end
		end	

	pig_latin = words.join
	pig_latin << "ay"
	return pig_latin
	end
end

puts translate('boci what')