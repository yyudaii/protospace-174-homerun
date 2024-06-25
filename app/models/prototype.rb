class Prototype < ApplicationRecord
  # belongs_to :room
  has_one_attached :image
  belongs_to       :user
  has_many         :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
