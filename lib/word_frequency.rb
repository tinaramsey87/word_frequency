class String
  define_method(:word_frequency) do |search_word|

    search_word.upcase!()

    search_array = self.split(" ")
    string_to_clean = search_array.join("")
    clean_search_string = string_to_clean.delete_punctuation()

    # search_array = self.upcase().split(" ")

    clean_search_array = clean_search_string.upcase().split(" ")
# binding.pry
        if clean_search_array.include?(search_word)
           clean_search_array.count(search_word)
        else
          "That word is not found in the phrase"
        end
  end

  define_method(:delete_punctuation) do
    punctuation = [",", ".", "!", "?", "-", "&", ";", ":", "/", "(", ")", "*", "@"]
    letters_array = self.split("")
    punctuation.each() do |punc|
      letters_array.each() do |letter|
        letters_array.delete(punc)
# binding.pry
      end
    end
    letters_array.join("")
  end

end
