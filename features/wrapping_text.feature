Feature: Wrapping text

Scenario: Wrapping text defined with heredoc
	Given the string:
"""
Here's is a string
with line breaks and everything
	Whoa here's a tab
"""
	And column number 42
	When I wrap the input
	Then I should see:
# The additional newlines are needed to match how the method returns a heredoc
"""

example text   word 
next line goes here

"""

#Scenario Outline: Wrapping text defined in example tables
#	Given the string <text_to_wrap>
#	And column number <column_number>
#	When I wrap the input
#	Then I should see <wrapped_text>
#
#Examples:
#	| text_to_wrap																| column_number	| wrapped_text															|
#	| example text 	 word next line goes here|	5							|	example text 	word next line goes here|