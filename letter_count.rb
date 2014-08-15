# Frequency of letters in string. Ignore space & case.
#  see:
# http://rubylearning.com/satishtalim/ruby_hashes.html
#
def letter_count ( str)
    
    puts str
    str1 = str.delete(" ")  # delete spaces
    str1 = str1.downcase
    lenStr1 = str1.length
    
   freqHash = Hash[ "a" => 0, "b" => 0,  "c" => 0, "d" =>0,
                    "e" => 0, "f" => 0,  "g" => 0, "h" =>0,
                    "i" => 0, "j" => 0,  "k" => 0, "l" =>0,
                    "m" => 0, "n" => 0,  "o" => 0, "p" =>0,
                    "q" => 0, "r" => 0,  "s" => 0, "t" =>0,
                    "u" => 0, "v" => 0,  "w" => 0, "x" =>0,
                    "y" => 0, "z" => 0
         ]


# puts "#{freqHash['a']}"
# puts "#{freqHash['b']}"         

   sArray = str1.split("")    
#   puts sArray                # CHARACTER ARRAY

   # Setup the frequency table
  sArray.each do|letter|
     freqHash[letter] =  freqHash[letter] + 1
    puts "#{letter} =>  "  + "#{freqHash[letter]}"
  end 
 
 puts "\n --------"
  
 #OUTPUT HASH TABLE  , hash table not in order
 

puts "==a #{ freqHash['a'] }"

# sort the hash table by Key
freqHash.keys.sort.each { |key| puts key +" ==> "+
                    freqHash[key].to_s }
  
end    # end letter_count
# ==================================================
letter_count("ab c defghcde xyz")
