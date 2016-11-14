class Answer < ApplicationRecord
  validates :body
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  belongs_to :user
  belongs_to :question
end
