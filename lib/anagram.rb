class Anagram
    def initialize(word)
        @word = word
    end
    attr_accessor :word 
    def match(list_of_words)
        
        original_array = list_of_words
        new_array = original_array
       
        final_array = []
        new_array.each_with_index do |phrase,index|
          word_to_check = phrase.split("")
          word_to_check.sort
          
          if @word.split("").sort == word_to_check.sort
            final_array << original_array[index]
          end
        end
        return final_array
      end
end