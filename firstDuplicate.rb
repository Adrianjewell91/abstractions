# The idea is to break the code into bite size pieces, and then crowd source the functions to be completed. 

# Solution:
# def firstDuplicate(a):
#     for i in a:
#         a[abs(i)-1] *= -1
#         if a[abs(i)-1] > 0:
#             return abs(i)
#     return -1
require 'byebug'

#passes codesignal

# Mock instructions.
# Write a function that invokes a callback and returns its ouput if the output is not null, else return -1. 
def firstDuplicate(array)
    proc1 = lambda { |array, proc1, proc2, proc3, proc4|
        for num in array do        
            n = proc1.call(array, num, proc2, proc3, proc4)
            return n if !!n
        end
        nil
    }   

    # Write a function that invokes a callback on an array and num 
    # Then, invoke a second callback, and if it returns true, then return the output of a third callback.
    proc2 = lambda { |array, num, proc1, proc2, proc3|
        proc1.call(array, num)

        if proc2.call(array, num)
            return proc3.call(num)
        end
        nil
    }

    # Write a function that multiples the absolute values of the idx-1 * -1 
    proc3 = lambda { |array, idx| 
        array[idx.abs-1] *= -1 
    }

    # Write a function that determines if the idx.abs - 1 > 0
    proc4 = lambda { |array, idx| 
        array[idx.abs-1] > 0 
    }

    # Calculate the absolute value of a number. 
    proc5 = lambda { |num| 
        num.abs 
    }
    
    res = proc1.call(array, proc2, proc3, proc4, proc5)
    return res || -1;
end

f([8,4,6,2,6,4,7,9,5,8], proc1, proc2, proc3, proc4, proc5) == 6
f([1, 1, 2, 2, 1], proc1, proc2, proc3, proc4, proc5) == 1
f([2, 2], proc1, proc2, proc3, proc4, proc5) == 2

# proc1 = Proc.new { |array, num| array[num.abs-1] *= -1 }
# proc2 = Proc.new { |array, num| array[num.abs-1] > 0 }
# proc3 = Proc.new { |num| num.abs }
# # Tests would be written for this block.
# def f(array, proc1, proc2, proc3)
#     # Iterate through the array,
#     for num in array do
#         # Make a modification dependent on the array and the fist num
#         # Modify the element at the index at the the current element tells us.
#         proc1.call(array, num)
#         # If that element fullfills a condition
#         # If that element is > 0 (ie. It's been modifed already)
#         if proc2.call(array, num)
#             # We know we've found the first duplicate and therefore return it
#             # In it's original condition. 
#             # Return it, modified in some special way if necessary. 
#             return proc3.call(num)
#         end
#     end

#     return -1;
# end


# proc1 = Proc.new { |array, num| array[num-1] *= -1 }
# proc2 = Proc.new { |array, num| array[num-1] > 0 }
# proc3 = Proc.new { |num| num.abs }
# def f(array, proc1, proc2, proc3)
#     for num in array do
#         proc1.call(array, proc3.call(num))
#         if proc2.call(array, proc3.call(num))
#             return proc3.call(num)
#         end
#     end

#     return -1;
# end
# # Passes codesignal tests.
# f([8,4,6,2,6,4,7,9,5,8], proc1, proc2, proc3)


