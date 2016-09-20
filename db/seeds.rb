# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
would_you_rather = [
  ["question1","option1a","option1b"],
  ["question2","option2a","option2b"],
  ["question3","option3a","option3b"],
  ["question4","option4a","option4b"],
  ["question5","option5a","option5b"],
  ["question6","option6a","option6b"],
  ["question7","option7a","option7b"],
  ["question8","option8a","option8b"]
]


would_you_rather.each do |question, answer1, answer2|
  Question.create( statement: question, answer1: answer1, answer2: answer2)
end
