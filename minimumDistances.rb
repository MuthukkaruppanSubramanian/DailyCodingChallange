require 'byebug'
def minimumDistances(a)
    # Write your code here
    #build a hash with element as key and no.of occurance as array
    #when second occurance is identified minus with the first one.
    #then return the least value.
    elementHash = {}
    diffArray = []
    a.each_with_index do |value, indice|
        # byebug
        if(elementHash.has_key?(value))
            elementHash[value] << indice
            if(elementHash[value].size == 2)
                diffArray << elementHash[value][1] - elementHash[value][0]
            end
        else
            elementHash[value] = [indice]
        end
    end
    return (diffArray.empty?)? -1 : diffArray.sort.first
end

puts minimumDistances([7, 1, 3, 4, 1, 7])

n = 6
a = [7, 1, 3, 4, 1, 7]

for i in 0..(n-1)
    for j in i+1..n
        puts "------#{a[j]},#{a[i]}"
    end
end