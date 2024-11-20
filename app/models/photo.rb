class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :caption, presence: true
  validates :image, presence: true 
end
