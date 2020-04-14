#write your code here
def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, num=2)
	phrase = word
	(num - 1).times do |i|
		phrase += " #{word}"
	end
	return phrase
end

def start_of_word(word, pos)
	return word[0..pos - 1]
end

def first_word(phrase)
	arr = phrase.split(' ')
	return arr[0]
end

def titleize(word)
	arr = word.split(" ")
	arr = arr.map{|i| title(i)}
	arr[0] = arr[0].capitalize()
	return arr.join(" ")
end

def title(word)
	if ["and", "the", "over"].include?(word)
		return word
	end
	return word.capitalize()
end

puts titleize("david copperdick")