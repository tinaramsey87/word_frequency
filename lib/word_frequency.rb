class String
  define_method(:word_frequency) do |search_word|
    search_word.upcase!()
    clean_search_string = self.gsub(/[^a-z\s]/i, '')
    clean_search_array = clean_search_string.upcase().split(" ")
    clean_search_array.count(search_word)
  end
end


#clean_search_array = self.delete_punctutation()
# search_array = self.split(" ")
# string_to_clean = search_array.join("")
# clean_search_string = string_to_clean.delete_punctuation()

# search_array = self.upcase().split(" ")

# clean_search_array = clean_search_string.upcase().split(" ")
# binding.pry
#   define_method(:delete_punctuation) do
#     punctuation = [",", ".", "!", "?", "-", "&", ";", ":", "/", "(", ")", "*", "@"]
#     letters_array = self.split(" ")
#     punctuation.each() do |punc|
#       letters_array.each() do |letter|
#         letters_array.delete(punc)
# # binding.pry
#       end
#     end
#     letters_array.join(" ")
#   end
# end
