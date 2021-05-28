require 'byebug'
require 'humanize'


#
# Complete the 'timeInWords' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER h
#  2. INTEGER m
#
def in_words(int)
  numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)
    elsif int/num > 0
      return str + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end
def timeInWords(h, m)
    # Write your code here
    #form a hash to map string template
    #build keyvalue based on the minute range
    #when mins > 30 add +1 to hours
    timehash = {"00" => "_hrs_ o' clock",
    			0 => "_hrs_ o' clock",
    			"withIn29" => "_mins_ minutes past _hrs_",
    			"from31To59" => "_mins_ minutes to _hrs_",
    			15 => "quarter past _hrs_",
    		    30 => "half past _hrs_",
    			45 => "quarter to _hrs_"}
    key = m
    h = h.to_i
    m = m.to_i
    key = "withIn29" if (((1..14).include? m) or ((16..29).include? m))
    if (((31..44).include? m) or ((46..59).include? m))
    	key = "from31To59"
    	m = (60-m)
    	h = h+1
    end
    h = h+1 if(m.eql?45)
    output =  timehash[key].gsub("_mins_",in_words(m)).gsub("_hrs_",in_words(h))
    output = output.gsub("minutes", "minute") if (m == 1)
    return output
end

puts timeInWords(5,55)