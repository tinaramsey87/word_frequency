class String
  define_method(:word_frequency) do |search_word|
    search_array = self.upcase().split(" ")
    search_word.upcase!()
#binding.pry
        if search_array.include?(search_word)
           search_array.count(search_word)
        else
          "That word is not found in the phrase"
        end
  end
end
