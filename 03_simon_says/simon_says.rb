def echo a
	return a
end

def shout a
	a = a.upcase
end

def repeat (a, b=2)
	([a] * b).join(" ")
end

def start_of_word (a, b=0)
	return a[0...b]
end

def first_word a
	i = " "
	j = 0
	c = "s"
	while a[j] != i do
		c[j] = a[j]
		j += 1
	end
	return c[0..j]
end

def titleize a
	little_words = ['the', 'you', 'and', 'over']
	a.capitalize!
	processing = a.split
	c = ""
	i = 0
	while i < processing.length do
		if little_words.include?processing[i]
			processing[i].downcase!
		else
			processing[i].capitalize!
		end
		i += 1
	end

	c = processing.join(" ")
	return c
end
