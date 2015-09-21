Feature: Wrapping text

Scenario: Dos lineas
	Given the string:
"""
cleancode
"""
	And column number 7
	When I wrap the input
	Then I should see:
"""
cleanco
de
"""

Scenario: Tres lineas
	Given the string:
"""
cleancodebooktwo
"""
	And column number 7
	When I wrap the input
	Then I should see:
"""
cleanco
debookt
wo
"""

Scenario: Dos lineas con un espacio
	Given the string:
"""
clean code
"""
	And column number 7
	When I wrap the input
	Then I should see:
"""
clean
code
"""

Scenario: Tres lineas con tres espacios
	Given the string:
"""
clean coding book
"""
	And column number 7
	When I wrap the input
	Then I should see:
"""
clean
coding
book
"""

Scenario: Tres lineas con cuatro espacios
	Given the string:
"""
cle an coding book
"""
	And column number 7
	When I wrap the input
	Then I should see:
"""
cle an
coding
book
"""

Scenario: Dos lineas con cinco espacios
	Given the string:
"""
cle an coding book for sale
"""
	And column number 19
	When I wrap the input
	Then I should see:
"""
cle an coding book
for sale
"""


Scenario: Dos lineas con cinco espacios
	Given the string:
"""
cle an coding book forsaleeeeeeeeeeeee
"""
	And column number 19
	When I wrap the input
	Then I should see:
"""
cle an coding book
forsaleeeeeeeeeeee
e
"""
