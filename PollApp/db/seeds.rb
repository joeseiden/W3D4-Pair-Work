# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username: "Barry_Bluejeans")
u2 = User.create(username: "Charlie_Chaps")
u3 = User.create(username: "Jerry_Jodhpurs")

p1 = Poll.create(author_id: u1.id, title: "Pants Poll")
q1 = Question.create(poll_id: p1.id, text: "What is the best style of pants?")
a1 = AnswerChoice.create(question_id: q1.id, text: "Jeans")
a2 = AnswerChoice.create(question_id: q1.id, text: "Chaps")
a3 = AnswerChoice.create(question_id: q1.id, text: "Jodhpurs")


q2 = Question.create(poll_id: p1.id, text: "What is the best pants material?")
a4 = AnswerChoice.create(question_id: q2.id, text: "Denim")
a5 = AnswerChoice.create(question_id: q2.id, text: "Leather")

p2 = Poll.create(author_id: u2.id, title: "Jacket Poll")
q3 = Question.create(poll_id: p1.id, text: "What is the best style of jacket?")
a6 = AnswerChoice.create(question_id: q3.id, text: "Sweatshirt")
a7 = AnswerChoice.create(question_id: q3.id, text: "Rainjacket")
a8 = AnswerChoice.create(question_id: q3.id, text: "Poncho")


q4 = Question.create(poll_id: p1.id, text: "What is the best jacket material?")
a9 = AnswerChoice.create(question_id: q4.id, text: "Denim")
a10 = AnswerChoice.create(question_id: q4.id, text: "Leather")

r1 = Response.create(answer_id: a1.id, user_id: u1.id)
r2 = Response.create(answer_id: a2.id, user_id: u2.id)
r3 = Response.create(answer_id: a3.id, user_id: u3.id)

r4 = Response.create(answer_id: a4.id, user_id: u1.id)
r5 = Response.create(answer_id: a5.id, user_id: u2.id)
r6 = Response.create(answer_id: a5.id, user_id: u3.id)

r7 = Response.create(answer_id: a6.id, user_id: u1.id)
r8 = Response.create(answer_id: a8.id, user_id: u2.id)
r9 = Response.create(answer_id: a8.id, user_id: u3.id)

r10 = Response.create(answer_id: a9.id, user_id: u1.id)
r11 = Response.create(answer_id: a10.id, user_id: u3.id)
