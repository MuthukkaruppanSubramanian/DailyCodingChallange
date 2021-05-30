require 'byebug'

def performOperations(arr, operations)
    # Write your code here
    #iterate the give operations
    #for each set push the values based on the index
    #have condition to check whether the given index is greater or lesser
    #if greate index -1 and push that value from main arry or +1
    newArray = []
    operations.each do |set|
		arr[set[0]], arr[set[1]] = arr[set[1]], arr[set[0]]
	end
    return arr
end
puts performOperations([1,2,3],[[0,2],[1,2],[0,2]])