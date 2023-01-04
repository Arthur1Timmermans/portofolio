from random import randint

# make a list of the objects the player can choose
hand = ["Rock", "Paper", "Scissors"]

# let the computer pick a random hand move
computer = hand[randint(0,2)]

#set player to False
player = False

# let player select a hand move
while player == False:

    player = input("Rock, Paper, Scissors?")
    if player == computer:
        print("oh no, you tied, better luck next time")
    elif player == "Rock":
        if computer == "Paper":
            print("You lost and the", computer, "has strangled your", player)
        else:
            print("You win! your", player, "smashes the", computer)
    elif player == "Paper":
        if computer == "Scissors":
            print("You lose!", computer, " has cut", player)
        else:
            print("You win! and your", player, "has strangled their", computer)
    elif player == "Scissors":
        if computer == "Rock":
            print("You lose, their", computer, "has smashed your", player)
        else:
            print("You win!", player, "has cut", computer)
    else:
        print("That answer is not vallid, please Check your spelling")

    player = False
    computer = hand[randint(0,2)]