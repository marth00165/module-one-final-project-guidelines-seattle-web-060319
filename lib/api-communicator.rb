require 'rest-client'
require_relative './answer'
require_relative './scraper.rb'
require_relative './quiz.rb'
require'pry'


example = Scraper.new

rwp = example.get_words
word = correct_answer(rwp)
 
 x = RestClient.get('https://od-api.oxforddictionaries.com/api/v2/entries/en-gb/#{word}?strictMatch=false, headers={app_id ="#{application_id}" app_key = "#{application_key}" }')
 y = JSON.parse(x)
binding.pry
 return y

