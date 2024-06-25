class Comment < ApplicationRecord
  belongs_to :prototype
  belongs_to :user
  
  validates :user_id,   presence: true
  validates :text,      presence: true
end
