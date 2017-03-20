
require 'pry'

class BubbleSort
  def initialize
  end

  def sort(collection_arg)
    how_long = collection_arg.length - 1
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

        x += 1
        y += 1

# binding.pry
        check_if_sorted = how_long.times.map do |n|
                            collection_arg[n] < collection_arg[n+1]
                          end
# binding.pry
        if check_if_sorted.include?(false) == false

          swapped = false
        end
      end
      x = 0
      y = 1
    end

    collection_arg
  end
end

sorter = BubbleSort.new

collection = [1,4,9,5,2,6,7,3,0,8]
puts ""
puts "Original Array: " + collection.inspect
puts "Sorted Array:   " + sorter.sort(collection).inspect

letter_collection = ["d", "b", "a", "c"]
puts ""
puts "Original Letter Array: " + letter_collection.inspect
puts "Sorted Letter Array: " + sorter.sort(letter_collection).inspect

# binding.pry
# ""
