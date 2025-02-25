require_relative '../lib/scraper'
require 'pry'

class WordPool < ActiveRecord::Base

example = Scraper.new
rwp = example.get_words

def filter(arr)#returns clean word for API
    filtered_word = []
    word = arr.sample
        if word.include?(",") || word.include?("(")
            filter(arr)
        else
            filtered_word.push(word)
            return filtered_word[0]
        end
end


#need to create a db of chosen words
#need to filter against that db to ensure we aren't repeating words in questions
def correct_word(arr)
    correct_word = filter(arr)
    Answers.create(correct_word)
    if correct.word == Answers.find(correct_word)    
        correct_word(arr)
    else 
        return correct_word
    end
end

# Pry.start
# 0