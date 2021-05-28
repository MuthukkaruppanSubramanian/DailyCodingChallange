#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'serviceLane' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER n
#  2. 2D_INTEGER_ARRAY cases
#

#Solution1
def serviceLane(n, cases, width)
    # Write your code here
    allowedWidth = []
    finalResult = []
    cases.each do |tcase|
        (tcase[0]..tcase[1]).each do |indicie|
            allowedWidth << width[indicie]
        end
        finalResult << allowedWidth.sort.first
        allowedWidth = []
    end
    return finalResult
end

#Solution2
def serviceLane(n, cases, width)
    finalResult = []
    cases.each do |tcase|
        finalResult << width.slice(tcase[0],((tcase[1]-tcase[0])+1)).sort.first
    end
    return finalResult
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

t = first_multiple_input[1].to_i

width = gets.rstrip.split.map(&:to_i)

cases = Array.new(t)

t.times do |i|
    cases[i] = gets.rstrip.split.map(&:to_i)
end

result = serviceLane n, cases, width

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
