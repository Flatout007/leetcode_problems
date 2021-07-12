# @param {Integer} x
# @return {Integer}

# 7. Reverse Integer

# Given a signed 32-bit integer x, 
# return x with its digits reversed. 
# If reversing x causes the value to go outside the signed 
# 32-bit integer range [-231, 231 - 1], then return 0.


def reverse(x)
    under = -2 ** 31
    over =  (2 ** 31) - 1 
    
    return 0 if(my_reverse(x) < under)  
    return 0 if(my_reverse(x) > over)   
    
        
    return my_reverse(x)
end


def my_reverse(x) 
    if x < 0
        s = x.to_s().split('')[1..-1].reverse()
        return s.unshift('-').join('').to_i() 
    else 
        return s = x.to_s.split('').reverse().join('').to_i
    end
end