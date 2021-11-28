import random
ran=random.randint(1,10)
name= input ("Enter your name here!")
guess= int(input("Guess number between 1 & 10 "))

if (guess==ran):
    print ("Congratulations " + name + " you guessed it right")
else:
    print("Unfortunately not the correct no.")
