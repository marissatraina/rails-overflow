class Answer < ApplicationRecord
  validates_presence_of :body
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  belongs_to :user
  belongs_to :question
end
