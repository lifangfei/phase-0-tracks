#You can use the relace(other_str) for every value so it's a suspect in all the cases

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".replace "the usual suspects"
"the usual".insert(-1, ' suspects')
# => "the usual suspects"

"suspects".insert(0, 'the usual ')
"suspects".prepend("the usual ")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..-1)
"The mystery of the missing first letter".gsub(/[T]/, '')
"The mystery of the missing first letter".gsub(/^./, "")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".each_byte.to_a
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count "a"
# => 4