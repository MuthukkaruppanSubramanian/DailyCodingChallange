require 'byebug'
def flatlandSpaceStations(n, c, m)
    return 0 if (n == m)
    finalResult = []
    distanceArray = []
    (0..n-1).each do |currentValue|
        if (c.include?currentValue)
            finalResult << 0 
            next
        end
        c.each do |spaceStation| 
            distanceArray << (spaceStation-currentValue).abs
        end
        # byebug
        finalResult << distanceArray.min
        distanceArray = []
    end
    return finalResult.max
end

#Solution 2 0(n) -> timeComplexitiy
def flatlandSpaceStations(n,c,m)
    answer = 0
    cc = c.sort()

    for i in (0..cc.size-2) do
        answer = [answer,(cc[i+1]-cc[i])/2].max
    end
    answer = [answer, cc[0], n-1 - cc[-1]].max
end

puts flatlandSpaceStations(100, [99], 1)