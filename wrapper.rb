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
    espacio_idx = text.index " "
    todas_partes = []
    sobrante = text

    while !espacio_idx.nil? && sobrante.size > col_num
      espacio_cercano_idx = sobrante.rindex " ", col_num

      if !espacio_cercano_idx.nil? && espacio_cercano_idx != espacio_idx
        espacio_idx = espacio_cercano_idx
      end
      
      todas_partes << sobrante[0..espacio_idx - 1]
      sobrante = sobrante[espacio_idx + 1..sobrante.size - 1]
      espacio_idx = sobrante.index " "
    end
    
    todas_partes << sobrante.scan(/.{1,#{col_num}}/)
    
    return todas_partes.join "\n"
  end
end