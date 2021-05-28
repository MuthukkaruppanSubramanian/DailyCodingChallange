def chocolateFeast(n, c, m)
    # Write your code here
    boughtChoclate = n/c
    return boughtChoclate if (boughtChoclate < m)
    return boughtChoclate+1 if (boughtChoclate == m)
    newValue = boughtChoclate
    until (newValue < m)
        tmp = newValue/m
        boughtChoclate += tmp
        remainingWrapper = newValue%m
        newValue = tmp + remainingWrapper
        tmp = 0
        remainingWrapper = 0
    end
    return boughtChoclate
end

puts chocolateFeast(15, 3, 2)