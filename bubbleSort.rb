# bubbleSort.txt   - sort integer array
#

# =====================================
def bubble_sort (arr) 

# boundary exception
if (arr.length <= 1) 
    return arr
end #if

swapFlag = true

while (swapFlag ) do
    a1=0
    a2= arr.length - 2
    temp =0 
    
    swapFlag = false
    while (a1 <= a2) do    
      # puts arr
      if (arr[a1] > arr[a1+1] )  
          temp = arr[a1]
          arr[a1] = arr[a1+1]
          arr[a1+1] = temp
          swapFlag = true          
      end  #if
      a1 +=1
      
#      puts "One pass swapped: "
#      puts arr  
    end #while    


end #while (swapFlag) -do

return arr
end #bubble_sort
# ======================================
bubble_sort [5,6,2,1,3,4]