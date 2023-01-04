import random
import string_utils

# pick random uppercase and uncercase letters, numbers and symbols based on the ASCII Table (https://www.101computing.net/wp/wp-content/uploads/ASCII-Table.pdf)
uppercaseLetter1=chr(random.randint(65,90))
uppercaseLetter2=chr(random.randint(65,90))
undercaseLetter1=chr(random.randint(97,122))
undercaseLetter2=chr(random.randint(97,122))
number1=chr(random.randint(48,57))
number2=chr(random.randint(48,57))
number3=chr(random.randint(48,57))
number4=chr(random.randint(48,57))
symbol1=chr(random.randint(33,47))

#Generate password using all the characters, in random order
password = uppercaseLetter1 + uppercaseLetter2 +undercaseLetter1 +undercaseLetter2 + number1 +number2 +number3 +number4 + symbol1
password =string_utils.shuffle(password)

#Ouput
print("your new password is:", password)