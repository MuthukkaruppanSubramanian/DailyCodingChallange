#!/bin/ruby

require 'json'
require 'stringio'
require 'byebug'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here
    empty = " "
    value = "#"
    n.times do |num|
    	number = num + 1
        first = empty*(n-number).abs
        second = value*number
        puts first+second
    end
end

n = 6

staircase n