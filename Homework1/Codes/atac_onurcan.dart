//dartpad.dev/?

void main()
{
    //initialization

    var tennisPlayer = {
    "name":"Roger",
    "surname":"Federer",
    "age": 41,
    "racket":"Wilson Pro Staff",
    "favorite_shot": "Forehand",
    "backhand_type": "One-handed"
    };

    //get and print the value for key "racket"

    var racket = tennisPlayer["racket"];
    print(racket);

    //add height item to the object

    tennisPlayer["height"] = 185;

    //remove backhand type from the object

    tennisPlayer.remove("backhand_type");

    //change the favorite shot from Forehand to Backhand

    tennisPlayer["favorite_shot"] = "Backhand";

    //check for the existence of age (a key) in the object

    var ageExists = false;

    if(tennisPlayer.containsKey("age"))
    {
        ageExists = true;
    }

    print(ageExists);

    //check for the existence of 185 (a value) in the object

    var valueExists = false;

    if(tennisPlayer.containsValue(185))
    {
        valueExists = true;
    }

    print(valueExists);

    //apply a function foo that prints the key-value pair

    foo(var key, var value)
    {
        print("$key" + " : " + "$value");
    }

    tennisPlayer.forEach((key, value)
    {
        foo(key, value);
    });
}