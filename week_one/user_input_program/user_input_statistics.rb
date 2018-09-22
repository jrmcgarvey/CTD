def is_float?(s)
  if s.to_i.to_s == s
    return true
  end
  s == s.to_f.to_s
end


def main
 stat= []
 


 # we need an array to store our data


 # how do we assign an array to a variable?
 loop do
     puts "Please enter a number"
     value= gets.chomp

     if value == ''

         break
     end
     if is_float?(value)

       stat << value
     end

   # continue to ask for a number

   # challenge: how do I check that may input is an integer and not a string?


   break if value == '' # this will end the loop if the user input is blank
 end
 # output data

 puts "the count is " + stat.length.to_s
 sum = 0.0
 stat.each {|value| sum+=value.to_f }
 puts "the sum is " + sum.to_s
 puts "the average is " + (sum/stat.length).to_s
end

main if __FILE__ == $PROGRAM_NAME