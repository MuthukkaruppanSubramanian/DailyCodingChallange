require 'byebug'
def howManyGames(p, d, m, s)
    # Return the number of games you can buy
    count = 0
    return count if(p > s)
    until((s -p) < 0)
        s = (s - p)
        count +=1
        p = ((p-d) < m)? m : (p-d)
    end
    return count
end

puts howManyGames(100, 19, 1, 180)