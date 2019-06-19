require_relative '../config/environment'

example = Scraper.new

correctAns = example.get_words.sample #same answer


def fake_answer(example)
  words = example.get_words.sample
  words
end

answerArr = [correctAns, fake_answer(example), fake_answer(example), fake_answer(example)]

optionA = answerArr.sample
optionB = answerArr.sample
optionC = answerArr.sample
optionD = answerArr.sample

class Question
     attr_accessor :prompt, :answer
     def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
     end
end



p1 = "Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}"
p2 = "Which of the following words means: -puts definition here- ?\n(a) #{correctAns}\n(b)#{fake_answer(example)}\n(c)#{fake_answer(example)}\n(d)#{fake_answer(example)}"


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
