fn main()
{
//Part 1
//should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)

//conditional mechanism doesn't have to be the integral part of the exit since break statement exists
//in rust

for x in 1..3
{
    println!("{}", x);
    break;  
}

println!("--------");

//continue expectedly end the current iteration of the loop and proceeds to the next one,
//while disregarding remaining code in current iteration

for x in 1..3
{
    println!("{}", x);
    continue;
    println!("something");  
}

println!("--------");

//when break or continue statements are used outside of a loop, rust displays an error indicating that those
//cannot be used outside of a loop

//Part 2
//should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)

//labeled break statement can be used to exit multiple loops at once

'out:
for x in 1..5
{
  for y in 5..10
  {
    println!("{}", y);
    break 'out;
  }
}

println!("--------");

//by specifying the loop by a label, continue statement can work on inner or outer loops
//in the following example, continue works on the outer loop which is specified by a label
//labeled break can be used in the same way as well

'outside:
for x in 1..3
{
  for y in 5..8
  {
    println!("{}", y);
    continue 'outside;
  }
}

println!("--------");

//break and continue statements exit only one loop at once as expected

for x in 1..3
{
  for y in 5..8
  {
    println!("{}", y);
    break;
  }
}

println!("--------");

for x in 1..3
{
  for y in 5..8
  {
    println!("{}", y);
    continue;
    println!("something");
  }
}

}