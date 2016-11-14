class Question < ApplicationRecord
  validates_presence_of :title, :body
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  has_many :answers
  belongs_to :user
end
