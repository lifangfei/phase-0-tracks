# PSUEDOCODE

# SETUP:
#     1. Create GuessingGame Class
#     2. Initialize with instance variables
#     3. Save word and also store as array
#     4. Create guess count that is double the length of the word
# USER INTERFACE:
#     5. Hide the word with underscores
# GUESSING LETTERS & WORDS: 
#     6. Check to see if the letter has been guessed before
#     7. Increase guess count if new letter and add to array of guesses
#     8. Unhide a letter if guess is correct
#     9. Repeat for words except not with array
#     10. End program if word is complete or there are no more underscores
# COUNTER
#     11. List how many guesses they have less
#     12. End the program if they run out of guesses

# game class

class GuessingGame
  attr_reader :guess_count, :is_over, :userinterface 
  attr_accessor :secretword, :guesses, :secretword_array, :hide
	
  def initialize(secretword)
    @secretword = secretword.downcase
    @secretword_array = secretword.downcase.split("")
    @userinterface = "_" * secretword.length
    @guess_count = secretword.length * 2
    @is_over = false
    @guesses = []
  end

# Hide all the letters from users
  def hidden
    @hide = @userinterface.split("")
  end

# Unhide letter if guessed correctly
  def guess_letter(letter)
    letter = letter.downcase
    if @guesses.include?(letter)
      puts "Already guessed #{letter}, please enter a new letter"
    else
      @guess_count -= 1
      @guesses << letter
      i = 0
      while i < @secretword.length
        if @secretword_array[i] == letter
          @hide[i] = letter
        end
        i += 1
      end
    end
    if !@hide.include?("_")
      @is_over = true
      puts "Success! The word is #{@secretword}! (:"
    end
    @hide.join(" ")
  end

# Unhide word if guessed correctly
  def guess_word(word)
    word = word.downcase
    if @guesses.include?(word)
      puts "Already guessed #{word}, please enter a new word"
    else
      @guess_count -= 1
      @guesses << word
      if @secretword == word
        return "Success! The word is #{@secretword}"
        @is_over = true
      else
        puts "Keep trying"
      end
    end
  end

# End game if correct word, correct letters, run out of guesses
  def counter
    if @guess_count == 0
      @is_over = true
      puts "Sorry, you ran out of guesses, the word was #{@secretword}, better luck next time :("
    else
      puts "You have #{@guess_count} guesses left"
    end
  end
end

# DRIVER CODE
=begin
  game = GuessingGame.new("Cookies")
  p game.hidden.join" "
  while !game.is_over
    puts "Please guess a letter or word"
    guess = gets.chomp
    game.counter
    if guess.length > 1
      game.guess_word(guess)
    elsif guess.length == 1
     p game.guess_letter(guess)
    else
      puts "Letters or words please"
    end
  end
=end


