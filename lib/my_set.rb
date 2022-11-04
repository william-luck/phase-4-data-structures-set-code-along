# # your code here

# # Set is for unqiue values. 

require 'pry'

# def first_repeated_value(array)
#     binding.pry
#     set = Set.new
#     # Iterate over the array, and return the element if the set includes that element. 
#     for i in 0..array.length
#         return array[i] if set.include?(array[i])
#         # If there is not a matching element in the set, then add that element to the set (will only add unique values)
#         set.add(array[i])
#     end
#     # returns nil if there is not a matching value
#     nil
# end

# first_repeated_value([1,2,3,3,4,4])

class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            # I think I get it.... because it will just only popoulate unique values... it's not going to create another key for the same value, beacuse it CAN'T. 
            @hash[value] = true
        end
    end

    def include?(value)
        # will return true because we just getting the boolean assocaited with the value
        # result = @hash[value]
        # if result
        #     result
        # else
        #     false
        # end

        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        hash
    end


end

binding.pry
0
