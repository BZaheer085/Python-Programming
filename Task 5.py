firstNo= int(input("Enter the first number! "))
secondNo= int(input("Enter the second number! "))
result=str(input ("Which operation do you want to perform Enter 'a' to Add 'b' to Subtract 'c' for Devision 'd' to Multiply and 'e' to first number to power of second number "))
if result== "a":
    print(firstNo+secondNo)
elif result=='b':
    print (firstNo-secondNo)
elif result== 'c':
    print (firstNo/secondNo)
elif result== 'd':
    print (firstNo*secondNo)
elif result=='e':
    print (firstNo**secondNo)