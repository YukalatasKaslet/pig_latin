def word_pig_latin(word)

	if word  =~ /\A[aeiou]/
		pig_latin_word = word.insert(-1, "way")
	else
    pig_word = ""
    new_word = word.split("")

    index = word.split("").find_index { |letter| letter =~ /[aeiou]/ }
    n = new_word.count - index

    new_word = Array.new(2) { new_word.pop(n) }
    
    new_word.each do |array|
      array.each do |char|
        pig_word += char
      end
    end

    pig_word += "ay"
     
	end
end
p word_pig_latin("bbefore")
p word_pig_latin("apple")






=begin
Script: Single word converter to Pig Latin

GET a word from user input
IF the word starts with a vowel, add "way" to the end
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add "ay"
ENDIF
RETURN the pig-latin word
=end

