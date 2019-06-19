require_relative '../config/environment'

example = Scraper.new

correctAns = example.get_words.sample


def answer_creator(example)
  words = example.get_words.sample
  words
end


class Question
     attr_accessor :prompt, :answer
     def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
     end
end

p1 = "Which of the following words means: -puts definition here- ?\n(a) #{answer_creator(example)}\n(b)#{answer_creator(example)}\n(c)#{answer_creator(example)}\n(d)#{answer_creator(example)}"
p2 = "What color are bananas?\n(a) Red/Green\n(b)#{answer_creator(example)}\n(c) Blue\n(d)Pink"


questions = [
     Question.new(p1, "a"),
     Question.new(p2, "b")
]

def run_quiz(questions)
     answer = ""
     score = 0
     for question in questions
          puts question.prompt
          answer = gets.chomp()
          if answer == question.answer
               score += 1
          end
     end
     puts "you got #{score} out of #{questions.length()}"
end
run_quiz(questions)
