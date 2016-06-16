def add (a,b)
	sum = a + b
end

def subtract (a,b)
	sum = a - b
end

def sum numbers
	s = 0
	numbers.each do |i|
		s += i
	end
	return s
end

def multiply (*a)
	s = 1
	a.each do |i|
		s *= i
	end
	return s
end

def power (a,b)
	 sum = a ** b
end

def factorial a
	i = a
	if a == 0
		return 1
	else
		while i > 1 do
			i -= 1
			a = a * (i)
		end
		return a
	end
end

