import random
start_number = 1
end_number = 100

secret_number = random.randint(start_number,end_number)
versuche = 0
while True:
    user_number = int(input(f"Raten sie bitte eine Zahl zwischen {start_number} und {end_number}: "))
    if user_number == secret_number:
        print("Herzlichen Glückwunsch! Sie haben die Zahl erraten!")
        break
    if user_number < secret_number:
        print(f"Die Zahl {user_number} ist kleiner als die zu erratende Zahl.")
    else:
        print(f"Die Zahl {user_number} ist größer als die zu erratende Zahl.")
    versuche += 1
print(f"Sie haben {versuche} gebraucht.")
print("Spiel beendet!")