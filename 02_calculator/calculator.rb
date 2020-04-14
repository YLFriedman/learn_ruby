#write your code here
def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(arr)
	sum = 0
	arr.each {
		|i| sum += i
	}
	return sum
end

def multiply(a, b)
	return a*b
end