=begin

In this Kata, you will implement The Luhn Algorithm, which is used to help 
validate credit card numbers.

Given a positive integer of up to 16 digits, return true if it is a valid credit
card number, and false if it is not.

Here is the algorithm:

If there are an even number of digits, double every other digit starting with 
the first, and if there are an odd number of digits, double every other digit 
starting with the second. Another way to think about it is, from the right to 
left, double every other digit starting with the second to last digit.

1714 => [1*, 7, 1*, 4] => [2, 7, 2, 4]

12345 => [1, 2*, 3, 4*, 5] => [1, 4, 3, 8, 5]

891 => [8, 9*, 1] => [8, 18, 1]
If a resulting doubled number is greater than 9, replace it with either the sum
of it's own digits, or 9 subtracted from it.

 [8, 18*, 1] => [8, (1+8), 1] => [8, 9, 1]

 (or)

 [8, 18*, 1] => [8, (18-9), 1] => [8, 9, 1]
Sum all of the final digits
 [8, 9, 1] => 8+9+1 => 18
Finally, take that sum and divide it by 10. If the remainder equals zero, the 
original credit card number is valid.

 18 (modulus) 10 => 8.  

 8 does not equal 0, so 891 is not a valid credit card number.

=end

def validate(n)
    card=n.to_s.split(//)
    card = ["0"]+card if card.length%2!= 0
    #print card
    evens = 0
    odds = 0
    card.each_index do |i|
        if i%2 == 0
            double = card[i].to_i*2
            double >9? evens += double-9 : evens += double 
        else
            odds += card[i].to_i
        end
    end
    (evens+odds)%10 == 0
end
puts validate(109)

=begin

def validate(n)
 n.to_s
   .split(//)
   .map(&:to_i)
   .reverse
   .map
   .with_index { |e,i| i.even? ? e:e*2  }
   .reverse
   .map { |x| x > 9 ? x-9 : x }
   .reduce(&:+) % 10 == 0
end



def validate(n)
array = n.to_s.scan(/\d/).map(&:to_i).reverse
array.each_with_index.map{|x,i| i.even? ? x : x < 5 ? x*2 : (x*2)-9}.reverse.inject(&:+) % 10 == 0 ? true : false
end


def validate(n)
  digits = n.to_s.chars.map(&:to_i)
  digits.reverse.each_with_index.inject(0) { |sum, (digit, index)|
    sum + (index.odd? && digit < 9 ? digit * 2 % 9 : digit)
  } % 10 == 0
end

def validate(n)
  n.to_s.chars.reverse.map(&:to_i)
   .each_with_index.map { |n, i|
     i.odd? ? n * 2 : n
   }.map { |n|
      n > 9 ? n - 9 : n
   }.inject(0, :+) % 10 == 0
end



=end