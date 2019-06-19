require_relative '../config/environment'

class Question
     attr_accessor :prompt, :answer
     def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
     end
end

p1 = "What color are apples?\n(a) Red/Green\n(b)Orange\n(c) Blue\n(d)Pink"
p2 = "What color are bananas?\n(a) Red/Green\n(b)Yellow\n(c) Blue\n(d)Pink"


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
