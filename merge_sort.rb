# Sort with merge sort method for sorting
#project merge from http://www.odinproject.com

def merge_sort(array)
	left = [] ; right = [] ; result = []

	return array if array.length <= 1  # a one-list element is sorted by definition
		
		#divide array in two lists
		midpoint = array.length/2

		0.upto(midpoint-1){|i| left << array[i]}

		midpoint.upto(array.length-1){|i| right << array[i]}

	    left = merge_sort(left)

	    right = merge_sort(right)

	       result = merge(left, right)

	       result
end

def merge(left, right)
	result = []
	until left.empty? or right.empty?

         if left.first <= right.first
         	result << left.first
         	left = left[1..-1]

         else
              result << right.first
              right = right[1..-1]	
         end

    end  
           #join remaining list with result
	     return result + left + right
end
puts merge_sort([5,8,1,-9,12,32,0,-3,17,11])
puts merge_sort(["zebra","james","erika","badu","mitsra"])