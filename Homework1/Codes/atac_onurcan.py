#onecompiler.com/python

#initialization

tennisPlayer = {
    "name":"Roger",
    "surname":"Federer",
    "age": 41,
    "racket":"Wilson Pro Staff",
    "favorite shot": "Forehand",
    "backhand type": "One-handed"
}

#get and print the value for key "racket"

racketOfPlayer = tennisPlayer.get("racket")
print(racketOfPlayer)

#add height item to the dictionary

tennisPlayer["height"] = 185

#remove backhand type from the dictionary

tennisPlayer.pop("backhand type")

#change the favorite shot from Forehand to Backhand

tennisPlayer["favorite shot"] = "Backhand"

#check for the existence of age (a key) in the dictionary

agePresent = False

for key in tennisPlayer:
    if key == "age":
        agePresent = True

print(agePresent)

#check for the existence of 185 (a value) in the dictionary

numberPresent = False

for value in tennisPlayer.values():
    if value == 185:
        numberPresent = True

print(numberPresent)

#apply a function foo that prints the key-value pair

def foo(key, value):
    print(key, value)

for key, value in tennisPlayer.items():
    foo(key, value)