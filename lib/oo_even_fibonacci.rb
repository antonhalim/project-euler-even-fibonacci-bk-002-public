class EvenFibonacci
	attr_reader :num

	def initialize(num)
		@num = num
	end

	def sum
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
end
