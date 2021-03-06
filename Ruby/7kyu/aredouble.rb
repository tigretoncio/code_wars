=begin

Your job is to build a function which determines whether or not there are double
characters in a string (including whitespace characters). For example aa, !! or .

You want the function to return true if the string contains double characters 
and false if not. The test should not be case sensitive; for example both 
aa & aA return true.

Examples:

  double_check("abca")
  #returns false

  double_check("aabc")
  #returns true

  double_check("a 11 c d")
  #returns true

  double_check("AabBcC")
  #returns true

  double_check("a b  c")
  #returns true

  double_check("a b c d e f g h i h k")
  #returns false

  double_check("2020")
  #returns false

  double_check("a!@#$%^&*()_-+=}]{[|\"':;?/>.<,~")
  #returns false

=end

def double_check(str)
  # Your code here
  /(.)\1/ === str.downcase
end