class Comment < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :user_id, presence: true
  validates :content, presence: true, length: { minimum: 5, maximum: 300 }
end
