<?php
// Part 1
// should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)

// there are break statements in PHP, so conditional mechanism isn't always the integral part of the exit

for ($x = 0; $x < 5; $x++) 
{
echo "$x \n";
break;
}

echo "-------- \n";

// continue statements exit the current iteration of the loop and passes onto the next one, disregarding the
// remaining code in that iteration

for ($x = 0; $x < 5; $x++) 
{
echo "$x \n";
continue;
echo "something";
}

echo "-------- \n";

// when break or continue is used outside the loop
// PHP displays fatal error caused from break and continue not being inside a loop 

// Part 2
// should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)

// there are different practices in PHP for this problem, one of them is putting the no of nested loops
// after the break statement, that way it can exit multiple loops at once

for ($x = 0; $x < 5; $x++) 
{
    for($y = 5; $y < 10; $y++)
    {
        echo "$y \n";
        break 2;
    }
}

echo "-------- \n";

// continue can be used in the same manner, getting out of the iteration of the outer loop

for ($x = 0; $x < 5; $x++) 
{
    for($y = 5; $y < 10; $y++)
    {
        echo "$y \n";
        continue 2;
    }
}

echo "-------- \n";

// another practice is using "goto" for exiting multiple loops

for ($x = 0; $x < 5; $x++) 
{
    for($y = 5; $y < 10; $y++)
    {
        echo "$y \n";
        goto out;
    }
}
out:

echo "-------- \n";

//break statements exit only one loop at a time as expected

for ($x = 0; $x < 5; $x++) 
{
    for($y = 5; $x < 10; $x++)
    {
        echo "$y \n";
        break;
    }
}

echo "-------- \n";

//continue statements exit only the inner loop iteration as expected

for ($x = 0; $x < 2; $x++) 
{
    for($y = 5; $y < 8; $y++)
    {
        echo "$y \n";
        continue;
        echo "something";
    }
}
?>