--Part 1
--should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)

--since lua has break statement, conditional mechanism does not have to be an integral part of the exit

for i = 0,5,1 
do 
   print(i)
   break
end

print("--------")

--lua does not include continue statement

--use of break outside the loop
--when used outide of a loop, lua gives an error indicating that break cannot be used outside a loop

--Part 2
--should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)

--lua does not have labeled break statement, but it has "goto" which can bu used in similar fashion
--to exit multiple loops at the same time

for i = 0,5,1 
do 
   for k = 10,15,1 do
    print(k)
    goto done
   end
end
::done::

print("--------")

--unlabeled break exits only from one loop as expected

for i = 0,5,1 
do 
   for k = 5,10,1 do
    print(k)
    break
   end
end