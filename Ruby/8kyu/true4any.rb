=begin

Create an any? (JS: any) function that accepts an array and a block 
(JS: function), and returns true if the block (/function) returns true for any 
item in the array. If the array is empty, the function should return false.

Ruby: If you get stuck, you can read up here:

http://www.rubycuts.com/enum-any

=end

def any? list, &block
  list.any?(&block)
end

=begin
"mine" is fancy solution

def any? list, &block
  list.each{|i| return true if block.call i}
  false
end

=end