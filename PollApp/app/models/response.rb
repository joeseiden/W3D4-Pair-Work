class Response < ActiveRecord::Base
  validates :answer_id, :user_id, presence: true

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_id

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

  has_one :question,
    through: :answer_choice,
    source: :question

  def not_duplicate_response
  end

  def respondent_already_answered?
    if sibling_responses.exists?(user_id: self.user_id)
      errors[:user_id] << "cannot vote twice for question"
    end
  end

  def sibling_responses
    question.responses.where.not(id: self.id)
  end

end
