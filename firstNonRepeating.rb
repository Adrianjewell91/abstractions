# def firstNotRepeatingCharacter(s)
#     counter = Hash.new(0)
#     letters = []
    
#     s.each_char do |ch|
#         letters << ch if counter[ch] == 0
#         counter[ch] += 1 
#     end 
    
#     letters.each do |ch|
#         return ch if counter[ch] == 1         
#     end 
    
#     return "_" 
# end

proc1 = Proc.new { |array, num| array[num.abs-1] *= -1 }
proc2 = Proc.new { |array, num| array[num.abs-1] > 0 }
proc3 = Proc.new { |num| num.abs }


# In words:
    # Count all the numbers 
    # And track the 
def abstraction(s)
    # define data struction
    counter = Hash.new(0)

    # define the data structure
    letters = []
    
    s.each_char do |ch|
        letters << ch if counter[ch] == 0
        counter[ch] += 1 
    end 
    
    letters.each do |ch|
        return ch if counter[ch] == 1         
    end 
    
    return "_" 
end