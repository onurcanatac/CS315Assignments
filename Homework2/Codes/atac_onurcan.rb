#Part 1
#should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)

#conditional mechanism does not have to be an integral part of the exit since ruby has break statement

for i in 0..3
    puts "#{i}"
    break
 end

puts "--------"

#ruby doesn't have continue, but it has next which has the same use

for i in 0..3
    puts "#{i}"
    next
    puts "something"
 end

puts "--------"

#when break and next are used outside of a loop
#ruby displays syntax errors, saying break and next are invalid

#Part 2
#should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)

#there aren't any labeled exits in ruby, or even goto statements, so there isn't any way to get out of
#multiple loops at once

#break statement only exits from one loop as expected

for i in 0..1
    for k in 5..7
    puts "#{k}"
    break
    end
 end

puts "--------"

#next behaves like continue statements in other languages, ending the specific iteration of the inner loop

 for i in 0..1
    for k in 5..7
    puts "#{k}"
    next
    puts "something"
    end
 end