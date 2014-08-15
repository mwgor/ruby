## 7/2014 Gor  ruby10.txt
## Imperfect verion of checkin an array for close bigger number
##   Next time - Use duplicate array &
##               try to do 1 thing at a time. - less interaction
##
##   Future Pseudocode :  
##         scan whole array for bigger number
##         Left scan for closest number
##         Right scan for closest number
##         Compare left and right closest.

#   Sort to find closestNumber  =====================================
#       bigger than arr1[i]

def left_larger (arr1, index)
# search leftmost closest number >  arr1[i]
  x = arr1[index]   # the number
  a1 = 0
  a2 = index -1
  leftMax =  arr1[0]
  leftMaxIndex =0
  left_found_flag  = false
#  
 while (a1 <= a2) do      # find the left side's closest bigger number
 
   puts "\nLeft 4 :  index, number = " + a1.to_s + "  " + arr1[a1].to_s 
   puts "\  nLeft 5: leftMaxIndex = " + leftMaxIndex.to_s
   
   if (arr1[a1] > x )      # found bigger number
     
     puts "\n  Left 6: index number = "+ a1.to_s + " " + leftMax.to_s
     
     if (arr1[a1] <= leftMax)  # smaller than the current max
         leftMax      = arr1[a1]
         leftMaxIndex = a1
         left_found_flag = true
         puts "\n  Left 10 ??:  index, number = " + a1.to_s+" "+arr1[a1].to_s
    #                          "  " + arr1[a1].to_s
     end
     
   end

 a1 +=1
 
 end      # end  while do
 
     
 puts "\n  Left 12:  index, number =  " +leftMaxIndex.to_s+" "+ arr1[leftMaxIndex].to_s
 puts "\nleft_found_flag = " 
 puts left_found_flag
 
 if (left_found_flag)
     return leftMaxIndex
 else
     return nil
 end    #if
 end     #left_larger

# ==================================================================
# search rightmost closest number >  arr1[i]
#  in: array, insex   out:  closest right side larger number or NIL
#
def right_larger (arr1, index)
# boundary exception

  x = arr1[index]   # the number

  a1 = index+1
  a2 = arr1.length 
  a2 -=1
puts a2
  rightMax =  arr1[index +1]
  rightMaxIndex = index +1
  right_found_flag  = false
#  
 while (a1 <= a2) do      # find the right side's closest bigger number
 
   puts "\nRight 4 :  index, number = " + a1.to_s + "  " + arr1[a1].to_s 
   puts "\n  Right 5: rightMaxIndex = " + rightMaxIndex.to_s
   
   if (arr1[a1] > x )      # found bigger number
     
     puts "\n  Right 6: index number = "+ a1.to_s + " " + 
                 rightMax.to_s
     
     puts "\n  Right 7: num , righMax = " + arr1[a1].to_s + " " + rightMax.to_s
     
     if (arr1[a1] <= rightMax or (rightMax <= x) )  # smaller than the current max
         rightMax      = arr1[a1]
         rightMaxIndex = a1
         right_found_flag = true
         puts "\n  Right 10 ??:  index, number = " + a1.to_s+" "+arr1[a1].to_s
    #                        
     end
     
   end

 a1 +=1
 
 end      # end  while do
 
     
 puts "\n  Right 12:  index, number =  " +rightMaxIndex.to_s+" "+ arr1[rightMaxIndex].to_s
 puts "\nRight_found_flag = " 
 puts right_found_flag
 
 if (right_found_flag)
     return rightMaxIndex
 else
     return nil
 end    #if
 
end     #right_larger

#  ================================================================
#   Main
#
def nearest_larger (arr1, index)
# boundary case exception
  if (arr1.length <=1)
        puts "\nEmpty or 1 item Array"
        return nil
  end
  
  #  Find left & right larger number index.
  leftIndex  = left_larger arr1, index 
  rightIndex  = right_larger arr1, index
  
  puts "nearest_larger:  left, right index = "
  puts leftIndex
  puts rightIndex
  
  puts "\narr = " 
  puts arr1
end
#nearest_larger [],1      # test cases
nearest_larger [8,4,2,0,1,8,2],2
