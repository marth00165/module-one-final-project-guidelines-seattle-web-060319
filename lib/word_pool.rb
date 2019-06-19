require_relative '../lib/scraper'
require 'pry'

example = Scraper.new
rwp = example.get_words

def filter(arr)
 filtered_word_pool = []
 word = arr.sample

    if word.include?(",") || word.include?("(")
        filter(arr)
    else
        filtered_word_pool.push(word)
        return filtered_word_pool
    end
end



def correct_word(arr)
    word = filter(arr).sample
    used_words = []
    if word == used_words.select {|word|}    
        correct_word(arr)
    else 
        used_words.push(word)
        binding.pry
        return word
    end
end

# def wrong_word
#     if wp.random == word 
#         wp.random
#     else
#         wp.random 
#     end
# end



filter(rwp)

Pry.start
0