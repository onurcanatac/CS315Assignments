--onecompiler.com/lua

--initialization

tennisPlayer = {
  name="Roger", 
  surname="Federer", 
  age = 41,
  racket = "Wilson Pro Staff",
  favorite_shot = "Forehand",
  backhand_type = "One-handed"}

--get and print the value for key "racket"

racket = tennisPlayer.racket
print(racket)

--add height item to the table

tennisPlayer.height = 185

--remove backhand type from the table
--setting an item to nil is the only convention I found in order to remove a key from the table 

tennisPlayer.backhand_type = nil

--change the favorite shot from Forehand to Backhand

tennisPlayer.favorite_shot = "Backhand"

--check for the existence of age (a key) in the table

ageExists = false

if tennisPlayer.age ~= nil
then ageExists = true
end

print(ageExists)

--check for the existence of 185 (a value) in the table

numberExists = false

for _, value in pairs(tennisPlayer) do
if value == 185 then
  numberExists = true
end
end

print(numberExists)

--apply a function foo that prints the key-value pair

function foo(key, value)
print(key,value)
end

for key, value in pairs(tennisPlayer)
do foo(key, value) end
