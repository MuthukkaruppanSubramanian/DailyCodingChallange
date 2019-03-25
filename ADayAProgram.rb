class AProgramADay
	def first_program(array,k)
		retVal = false
		array.each do |num|
			rem = k - num
			retVal = true if (array.include?rem)
		end
		puts retVal
	end
end

obj = AProgramADay.new()
#Given a array and value k, return whether any
#two numbers from the array add up to k
obj.first_program([1,5,7,3],4)