#onecompiler.com/ruby

#initialization

tennisPlayer = {
    "name" => "Roger",
    "surname" => "Federer",
    "age" => 41,
    "racket" => "Wilson Pro Staff",
    "favorite_shot" => "Forehand",
    "backhand_type" => "One-handed"
}

#get and print the value for key "racket"

racket = tennisPlayer["racket"]
puts racket

#add height item to the hash

tennisPlayer["height"] = 185

#remove backhand type from the hash

tennisPlayer.delete("backhand_type")

#change the favorite shot from Forehand to Backhand

tennisPlayer["favorite_shot"] = "Backhand"

#check for the existence of age (a key) in the hash

ageExists=false

if tennisPlayer.has_key?("age")
  ageExists = true
end

puts ageExists

#check for the existence of 185 (a value) in the hash

numberExists=false

if tennisPlayer.has_value?(185)
  numberExists = true
end

puts numberExists

#apply a function foo that prints the key-value pair

  def foo(key, value)
    puts "#{key} , #{value}"
  end

  tennisPlayer.each do |key,value|
    foo(key,value)
  end