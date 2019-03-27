require 'debugger'
class AProgramADay
	def first_program(array,k)
		retVal = false
		array.each do |num|
			rem = k - num
			retVal = true if (array.include?rem)
		end
		puts retVal
	end

	def second_program(array)
		retVal = nil
		altrArray = array
		array.each do |num|
			altrArray = array.dup
			altrArray.delete(num)
			diff = array.size - altrArray.size
			retVal = num if (diff == 1)
			break if !(retVal.nil?)
		end
		puts retVal
	end

	def second_program_type2(array)
		retVal = nil
		keyCount = Hash.new
		array.each do |num|
			if(keyCount.has_key?(num))
				keyCount[num] += 1
			else
				keyCount[num] = 1
			end
		end
		puts keyCount.key(1)
	end
end

obj = AProgramADay.new()
#Given a array and value k, return whether any
#two numbers from the array add up to k
# obj.first_program([1,5,7,3],4)
# obj.second_program([3,3,5,5,8,6,6])
obj.second_program_type2([3,3,5,5,8,6,6])