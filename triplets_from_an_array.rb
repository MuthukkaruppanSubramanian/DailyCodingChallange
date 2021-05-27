arr = [1, 2, 4, 5, 7, 8, 10]
# arr = [1, 6, 7, 7, 8, 10, 12, 13, 14, 19]
size = arr.size
d = 3
fianlArray = 0
loopCountA = 0
loopCountB = 0
triplets = 0
usedArray = []
usedArrayB = []
for i in 0...(size-2)
	loopCountA +=1
  for j in (i+1)...(size-1)
  	loopCountA +=1
    break if (arr[j] - arr[i] > d)
    for k in (j+1)...(size)
    	loopCountA +=1
      break if (arr[k] - arr[j] > d)
      usedArray << [arr[i],arr[j],arr[k]]
      triplets += 1 if((arr[k] - arr[j] == d) && (arr[j] - arr[i] == d))
    end
  end
end
 
puts triplets
puts "loopcount A = #{loopCountA}"
pp usedArray




for i in (0..size-1)
	loopCountB +=1
    for j in (1..size-1)
    	loopCountB +=1
        break if (arr[j] - arr[i] > d)
        for k in (2..size-1)
        	loopCountB +=1
            break if (arr[k] - arr[j] > d)
            usedArrayB << [arr[i],arr[j],arr[k]]
            fianlArray +=1 if(((arr[j]-arr[i])== d) and ((arr[k] - arr[j])==d))
        end
    end
end

puts "#{fianlArray}\n"

puts "loopcount B = #{loopCountB}"
pp usedArrayB
