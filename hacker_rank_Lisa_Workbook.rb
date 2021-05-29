#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'workbook' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER k
#  3. INTEGER_ARRAY arr
#

def workbook(n, k, arr)
    # Write your code here
    sp = 0
    count = 0
    arr.each do |range|
        remainingArray = Array(1..range)
        until (remainingArray.empty?)
            count += 1
            x = remainingArray.slice!(0,k)
            sp +=1 if (x.include?count)
        end
    end
    return sp
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

arr = gets.rstrip.split.map(&:to_i)

result = workbook n, k, arr

fptr.write result
fptr.write "\n"

fptr.close()

puts workbook(5, 3, [4, 2, 6, 1, 10])