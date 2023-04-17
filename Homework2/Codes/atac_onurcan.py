# Part 1
# should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)

# in python there are break statements, hence the conditional mechanism doesn't have to be an integral part of the exit

for x in range(0,5):
  print(x)
  break

print("--------")

# continue statement skips the part after it and passes onto next iteration in the loop

for x in range(5,10):
  print(x)
  continue
  print("something")

print("--------")

# behaviour when not in a loop
# when not used in a loop, both break and continue statement end up with a syntax error, which mentions that they cannot
# be used outside of the loop

# Part 2
# should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)

# python does not support labeled exits, and in unlabeled exits break statement only exits only one loop body

for x in range(0,5):
  for y in range(15,20):
    print(y)
    break

print("--------")

# continue statement skips the part after it and passes onto next iteration in the loop, it only works for the inside loop in this situation

for x in range(0,2):
  for y in range(15,18):
    print(y)
    continue
    print("something")