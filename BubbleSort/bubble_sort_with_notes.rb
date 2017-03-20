
require 'pry'
## pairing session notes with Josh T for reference.....
#
# def bubble_sort(array)
#   # binding.pry
#
#   first = array[0]
#   second = array[1]
#
#   if first > second
#     first, second = second, first
#   end
#
#   return array
#
#
#   # until
#   # end
#
# end
#
# array1 = [2, 4]
# array2 = [4, 2]
# p bubble_sort(array1)
# p bubble_sort(array2)
# ^^^^^ THIS IS WHAT JOSH THOMPSON AND I DID! ASSIGNMENT ASKS FOR CLASS!
#       STARTING OVER ON LINE 30 for compliance with lesson plan

#Line by Line notes for personal reference WEEK 1 so I don't forget how I achieved this.
class BubbleSort
  def initialize
  end

  def sort(collection_arg)
    how_long = collection_arg.length - 1  #<--- HOW LONG IS A LOCAL VARIABLE (variable set inside an operation/method2d)
    x = 0
    y = 1
    swapped = true
    while swapped == true
      how_long.times do

        first = collection_arg[x]
        second = collection_arg[y]
        if first > second
          collection_arg[x] = second
          collection_arg[y] = first
        end

        x += 1 #<--- using values to force iteration through the array "collection" or the arguement "collection_arg" o the class method "sort"
        y += 1

# binding.pry
        check_if_sorted = how_long.times.map do |n|    #<----.times method running against how_long which is a returned value of collection_are.length which returns a numerical value
                            collection_arg[n] < collection_arg[n+1]
                          end
# binding.pry
        if check_if_sorted.include?(false) == false  #<---- calling .include on the array (check_if_sorted's value) looking for a false. See the false arguement?
                                                     #      using the boolean, we check if ANY falses are found in the array. If Not it's considered sorted.
          swapped = false                            #<---- and we switch the variable "Swapped" to FALSE. That will kill the WHILE LOOP.
        end #<--- if end
      end #<--- how_long.times DO end
      x = 0
      y = 1
    end  #<--- While end

    collection_arg
  end #<----- DEF sort(collection_arg) END
end   #<---- CLASS BubbleSort END

collection = [1,4,9,5,2,6,7,3,0,8]
sorter = BubbleSort.new   #<------- New Class Object
puts "Original Array: " + collection.inspect
puts "Sorted Array:   " + sorter.sort(collection).inspect  #<--- .inspect shows the value of the variable


# binding.pry
# ""
