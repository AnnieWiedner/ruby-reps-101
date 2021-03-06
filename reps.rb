# write your reps here
# makes sure to either `p my_output` or `puts my_output`.
# `p _variablename_` prints the full Object
# `puts _variablename_` prints the Object.to_s (.toString())
# to run, just `ruby reps.rb`


###### ROUND 1 ######

# Write a function lengths that accepts a single parameter as an argument,
# namely an array of strings. The function should return an array of
# numbers. Each number in the array should be the length of the corresponding
# string.

def lengths(words)
  numbers = Array.new
  for word in words
    numbers.push(word.length)
  end
  p numbers
end

lengths(["hello", "what", "is", "up", "dude"]) #### => [5, 4, 2, 2, 4]


###### ROUND 2 ######

# Write a Ruby function called transmogrifier This function should accept
# three arguments, which you can assume will be numbers. Your function
# should return the "transmogrified" result

# The transmogrified result of three numbers is the product
# (numbers multiplied together) of the first two numbers, raised to the
# power (exponentially) of the third number.

# For example, the transmogrified result of 5, 3, and 2 is (5 times 3)
# to the power of 2 is 225.

def transmogrifier(num1, num2, num3)
  p (num1 * num2) ** num3
end

transmogrifier(5, 4, 3)
transmogrifier(13, 12, 5)
transmogrifier(42, 13, 7)


###### ROUND 3 ######

# If accent is the string "daffy", return a modified version of sentence
# with all "s" replaced with "th".

# If the accent is "elmer", replace all "r" with "w".
# Feel free to add your own accents as well!

# If the accent is not recognized, just return the sentence as-is.

def toonify(accent, sentence)
  if accent == "daffy"
    p sentence.gsub(/[s]/, 'th')
  elsif accent == "elmer"
    p sentence.gsub(/[r]/, 'w')
  else
    p sentence
  end
end

toonify("daffy", "so you smell like sausage") # => "tho you thmell like thauthage"


###### ROUND 4 ######

# Write a function wordReverse that accepts a single argument, a string.
# The method should return a string with the order of the words reversed.
# Don't worry about punctuation.

def word_reverse(string)
  arr = string.split(' ')
  str = ""
  arr.reverse_each {|word| str += "#{word} "}
  p str
end

word_reverse("Now I know what a TV dinner feels like") # => "like feels dinner TV a what know I Now"


###### ROUND 5 ######

# Write a function letterReverse that accepts a single argument, a string.
# The function should maintain the order of words in the string but reverse
# the letters in each word. Don't worry about punctuation. This will be very
# similar to round 4 except you won't need to split them with a space.

def letter_reverse(string)
  arr = string.split(" ")
  reverse = arr.collect do |word|
    word.reverse
  end
  p reverse.join(" ")
end

letter_reverse("Now I know what a TV dinner feels like") # => "woN I wonk tahw a VT rennid sleef ekil"
letter_reverse("Put Hans back on the line") # => "tuP snaH kcab no eht enil"


###### ROUND 6 ######

# Write a function longest that accepts a single argument, an array of strings.
#  The method should return the longest word in the array. In case of a tie,
# the method should return either.

def longest(array_of_strings)
  longest = ""
  array_of_strings.each do |string|
    if string.length > longest.length
      longest = string
    end
  end
  p longest
end

longest(["oh", "good", "grief"]) # => "grief"
longest(["Nothing" , "takes", "the", "taste", "out", "of", "peanut", "butter", "quite", "like", "unrequited", "love"])
# => "unrequited"
