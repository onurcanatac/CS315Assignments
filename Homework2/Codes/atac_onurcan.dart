
void main()
{  
    // Part 1
    // should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)

    // in dart there are break statements, hence the conditional mechanism does not have to be an integral part of the exit

    for( var i = 0; i < 5; i++) 
    { 
        print(i);
        break; 
    }

    print("--------");

    // continue statement moves to the next iteration of the loop while skipping the code before the next iteration

    for( var i = 0; i < 5; i++)
    {
        print(i);
        continue;
        print("something");
    }

    print("--------");

    // behaviour when not in a loop
    // when written outside of a loop, both break and continue statements give an error that mentions those cannot be used outside of a loop

    // Part 2
    // should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)

    // dart supports labeled exits, and they make it convenient to exit multiple loops

    out:
    for( var i = 0; i < 5; i++)
    {
        for(var k = 10; k < 15; k++)
        {
            print(k);
            break out;
        }
    }

    print("--------");

    // in this kind of use, continue statement continues executing from the next iteration of the
    // outer loop

    outside:
    for( var i = 0; i < 5; i++)
    {
        for(var k = 10; k < 15; k++)
        {
            print(k);
            continue outside;
            print("something");
        }
    }

    print("--------");

    // in dart, unlabeled exits still exit from only one loop

    for( var i = 0; i < 5; i++)
    {
        for(var k = 15; k < 20; k++)
        {
            print(k);
            break;
        }
    }

    print("--------");

    for( var i = 0; i < 2; i++)
    {
        for(var k = 15; k < 20; k++)
        {
            print(k);
            continue;
            print("something");
        }
    }
}