#You can use the relace(other_str) for every value so it's a suspect in all the cases

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(1, 'o')
# => “zoom”

puts "enhance".center(15)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".replace "the usual suspects"
puts "the usual".insert(-1, ' suspects')
# => "the usual suspects"

puts "suspects".insert(0, 'the usual ')
puts "suspects".prepend("the usual ")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".slice(1..-1)
puts "The mystery of the missing first letter".gsub(/[T]/, '')
puts "The mystery of the missing first letter".gsub(/^./, "")
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

puts "z".each_byte.to_a
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts "How many times does the letter 'a' appear in this string?".count "a"
# => 4