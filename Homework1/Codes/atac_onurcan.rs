//onecompiler.com/rust

use std::collections::HashMap;

fn main() 
{
    //initialization

    let mut tennis_player = HashMap::new();
  
    //mismatched types error if I try int as a value
    
    tennis_player.insert(
      "name",
      "Roger"
    );
      tennis_player.insert(
      "surname",
      "Federer"
    );
      tennis_player.insert(
      "age",
      "41"
    );
      tennis_player.insert(
      "racket",
      "Wilson Pro Staff"
    );
      tennis_player.insert(
      "favorite_shot",
      "Forehand"
    );
      tennis_player.insert(
      "backhand_type",
      "One-handed"
    );

    //get and print the value for key "racket"

    match tennis_player.get("racket") 
    {
        Some(racket) => println!("{}",racket),
        None => println!("Racket not found.")
    }

    //add height item to the object

    //mismatched types error if I try int as a value

    tennis_player.insert(
      "height",
      "185"
    );
    
    //remove backhand type from the object

    tennis_player.remove("backhand_type");

    //change the favorite shot from Forehand to Backhand

    tennis_player.insert("favorite_shot", "Backhand");

    //check for the existence of age (a key) in the object

    let age_exists = tennis_player.contains_key("age");
    println!("{}", age_exists);

    //check for the existence of 185 (a value) in the object

    let height_exists = tennis_player.values().any(|&value| value == "185");
    println!("{}", height_exists);

    //apply a function foo that prints the key-value pair

    fn foo(key: &str, value: &str)
    {
      println!("{} : {}",key, value);
    }

    for (key, value) in &tennis_player {
      foo(key, value);
    }
}