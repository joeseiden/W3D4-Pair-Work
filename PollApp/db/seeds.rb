# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(username: "Barry_Bluejeans")
u2 = User.create!(username: "Charlie_Chaps")
u3 = User.create!(username: "Jerry_Jodhpurs")
u4 = User.create!(username: "Kevin_Kilt")

p1 = Poll.create!(author_id: u1.id, title: "Pants Poll")
q1 = Question.create!(poll_id: p1.id, text: "What is the best style of pants?")
a1 = AnswerChoice.create!(question_id: q1.id, text: "Jeans")
a2 = AnswerChoice.create!(question_id: q1.id, text: "Chaps")
a3 = AnswerChoice.create!(question_id: q1.id, text: "Jodhpurs")


q2 = Question.create!(poll_id: p1.id, text: "What is the best pants material?")
a4 = AnswerChoice.create!(question_id: q2.id, text: "Denim")
a5 = AnswerChoice.create!(question_id: q2.id, text: "Leather")

p2 = Poll.create!(author_id: u2.id, title: "Jacket Poll")
q3 = Question.create!(poll_id: p1.id, text: "What is the best style of jacket?")
a6 = AnswerChoice.create!(question_id: q3.id, text: "Sweatshirt")
a7 = AnswerChoice.create!(question_id: q3.id, text: "Rainjacket")
a8 = AnswerChoice.create!(question_id: q3.id, text: "Poncho")


q4 = Question.create!(poll_id: p1.id, text: "What is the best jacket material?")
a9 = AnswerChoice.create!(question_id: q4.id, text: "Denim")
a10 = AnswerChoice.create!(question_id: q4.id, text: "Leather")

p3 = Poll.create!(author_id: u4.id, title: "Braveheart Poll")
q5 = Question.create!(poll_id: p3.id, text: "What can they take?")
a11 = AnswerChoice.create!(question_id: q5.id, text: "Our lives")
a12 = AnswerChoice.create!(question_id: q5.id, text: "Our freedom")

q6 = Question.create!(poll_id: p3.id, text: "What can they not take?")
a13 = AnswerChoice.create!(question_id: q6.id, text: "Our lives")
a14 = AnswerChoice.create!(question_id: q6.id, text: "Our freedom")


r1 = Response.create!(answer_id: a1.id, user_id: u4.id)
r2 = Response.create!(answer_id: a2.id, user_id: u2.id)
r3 = Response.create!(answer_id: a3.id, user_id: u3.id)

r4 = Response.create!(answer_id: a4.id, user_id: u4.id)
r5 = Response.create!(answer_id: a5.id, user_id: u2.id)
r6 = Response.create!(answer_id: a5.id, user_id: u3.id)

r7 = Response.create!(answer_id: a6.id, user_id: u1.id)
r8 = Response.create!(answer_id: a8.id, user_id: u4.id)
r9 = Response.create!(answer_id: a8.id, user_id: u3.id)

r10 = Response.create!(answer_id: a9.id, user_id: u1.id)
r11 = Response.create!(answer_id: a10.id, user_id: u3.id)

r12 = Response.create!(answer_id: a11.id, user_id: u1.id)
r13 = Response.create!(answer_id: a11.id, user_id: u2.id)
r14 = Response.create!(answer_id: a12.id, user_id: u3.id)

r15 = Response.create!(answer_id: a14.id, user_id: u1.id)
r16 = Response.create!(answer_id: a14.id, user_id: u2.id)
r17 = Response.create!(answer_id: a13.id, user_id: u3.id)
