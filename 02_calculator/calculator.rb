def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	arr.inject(0) { |s, i| s + i }
end

def multiply(*num)
	num.reduce(1, :*)
end

def power(a, b)
	a ** b
end

def factorial(n)
	return 1 if n < 2

	(2..n).reduce(1, :*)
end