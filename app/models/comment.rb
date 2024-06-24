class Comment < ApplicationRecord
  belongs_to :prototype
  belongs_to :user
  
  validates :prototype, presence: true
end
