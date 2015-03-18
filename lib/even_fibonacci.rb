def even_fibonacci_sum(num)
	fibonacci_array(num).inject(0){|sum, x| sum += x.even? ? x : 0 }
end


def fibonacci_array(num)
	array = [1, 2]
	x= 0
	while array[x]+array[x+1] < num do
		array << array[x]+array[x+1]
		x += 1
	end
array
end
