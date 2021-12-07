"""Write a program which will ask for two numbers
from a user. Then offer an option menu to the user
giving them a choice of maths operators. Once the
user has selected which operator they wish to use,
perform the calculation by using a procedure and
passing parameters."""

# defining function passing three parameters asking user to input two numbers and required action to perform
def calculate(firstNo, secondNo, mathsOperator): 
    # condition to check users inputs '+' sign operator 
    if mathsOperator== "+":
        # above condition is true, add two numbers                       
        result=(firstNo+secondNo)
        # display the result after adding two numbers          
        print (result)
    # condition to check users inputs '-' sign operator 
    elif mathsOperator=='-':
        # subtracting the two numbers and assigning the result to variable 'result'                     
        result= (firstNo-secondNo)
        # displaying the result 
        print (result)
    # condition to check if users inputs '/' sign operator 
    elif mathsOperator== '/':
        # deviding the two numbers and assigning the result to variable 'result'
        result= (firstNo/secondNo)
        # displaying the value stored in variable result
        print (result)
    # condition to check if users inputs letter x 
    elif mathsOperator== 'x':
        # multiplying the two numbers and assigning the result to variable 'result'
        result= (firstNo*secondNo)
        # displaying the value stored in variable result
        print (result)
    # condition to check if users inputs letter e
    elif mathsOperator=='e':
        # calculating first number to the power of second number and assigning the result to variable 'result'
        result= (firstNo**secondNo)
        # displaying the value stored in variable result
        print (result)

# asking the user for first number
firstNo= int(input("Enter the first number "))
# asking the user for the second number
secondNo= int(input("Enter the second number "))
# asking the user to enter arithmetic operator to perform the required operation 
mathsOperator=str(input ("Enter required arithmetic operator to perform calculation '+' to Add '-' to Subtract '/' for Devision 'x' to Multiply and 'e' to first number to power of second number "))
# calling the function passing three arguments
calculate(firstNo,secondNo,mathsOperator)