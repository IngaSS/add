
require_relative 'questions'
require_relative 'results'

name = ARGV[0]
name = "Аноним" if name == nil

puts "Доброго времени суток, #{name}. Оттветьте на наши вопросы. (Введите а, б или в)."

questions = Questions.new
questions.ask

results = Results.new
results.print_results(questions)