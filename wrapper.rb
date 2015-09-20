##
# http://www.codingdojo.org/cgi-bin/index.pl?KataWordWrap
# You write a class called Wrapper, that has a single static function named 
#  wrap that takes two arguments, a string, and a column number. The function 
#  returns the string, but with line breaks inserted at just the right places to 
# make sure that no line is longer than the column number. You try to break #
# lines at word boundaries.
# Like a word processor, break the line by replacing the last space in a line 
# with a newline.
##
class Wrapper
  # Wraps the text
  # +text+: The text to be wrapped
  # +col_num+: The column at which to wrap
  def wrap(text, col_num)
"""
example text   word 
next line goes here
"""
  end
end