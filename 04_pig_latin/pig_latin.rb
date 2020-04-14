#write your code here
def translate(phrase)
	arr = phrase.split(" ")
	arr = arr.map{|word| translate_word(word)}
	return arr.join(" ")
end

def translate_word(word)
	q_flag = false
	index = 0
	segment = ""
	word.each_char do |i|
		if is_vowel(i) and q_flag == false
			break
		end
		segment += i
		index += 1
		if q_flag = true
			q_flag = false
		end
		if i == 'q'
			q_flag = true
		end
	end
	return "#{word[index..]}#{segment}ay"
end

def is_vowel(letter)
	if ["a", "e", "i", "o", "u"].include?(letter)
		return true
	end
	return false
end