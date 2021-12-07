"""As an extension to the motorbike task that costs
£2000 and loses 10% of its value every year. Set up
a function that performs the calculation by passing
in parameters. Then using a loop, print the value of
the bike every following year until it falls below
£1000 """

def function_1(valueOfBike):
    while valueOfBike<=2000:
        print (valueOfBike)
        valueOfBike=(valueOfBike-(valueOfBike*0.10))
        if valueOfBike<1000:
            break

function_1(2000)