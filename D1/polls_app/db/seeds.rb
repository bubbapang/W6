# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Drop all tables with cascade
# ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS users CASCADE")
# ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS polls CASCADE")
# ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS questions CASCADE")
# ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS answer_choices CASCADE")
# ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS responses CASCADE")

user1 = User.create!(username: 'Markov')
user2 = User.create!(username: 'Richard')
poll1 = Poll.create!(title: 'Cats Poll', author: user1)
ques1 = Question.create!(body: "Which color cat is best?", poll: poll1)
ans1 = AnswerChoice.create!(body: "Orange", question: ques1)
ans2 = AnswerChoice.create!(body: "Black", question: ques1)
ans3 = AnswerChoice.create!(body: "White", question: ques1)
ans4 = AnswerChoice.create!(body: "Tan", question: ques1)
