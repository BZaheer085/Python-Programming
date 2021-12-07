""" Program to check if the number is a prime number"""

num= int (input ("Enter the number to check if it's Prime no. "))
flag= 1
if num > 1: 
    for i in range (2, num):
        if (num  % i == 0):
            print (num, " is not prime number")
            flag= 0
            break

    if flag ==1:
        print (num, " is a prime number")
else: print ("Prime numbers are greater than 1")