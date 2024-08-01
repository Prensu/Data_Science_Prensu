import random 
while True:     
     print(''' 1. roll the dice             2. exit     \n''')    
     user = int(input("what you want to do\n"))     
     if user==1:         
        number = random.randint(1,6)         
        print(f"The random  dice value you get is {number}\n\n")  
     else:         
        break