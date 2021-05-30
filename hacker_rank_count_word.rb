require 'byebug'

def howMany(sentence)
    # Write your code here
    #split the sentence by space
    #iterate the arrya
    #for each value check with regex whether it a word or number or special char
    #increase the counter if it is a word
    counter = 0
     sentence.split(" ").each do |word|
        next if (word.match(/[\d+\[\]\(\)\{\}]/))
        counter +=1 if (word.match(/[\D+-.,!\?]/))
    end
    return counter
end

puts howMany("b? Dl )B 4(V! A. MK, YtG ](f 1m )CNxuNUR {PG? ")